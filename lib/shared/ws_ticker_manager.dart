import 'dart:async';
import 'package:dcex/core/model/api_response.dart';
import 'package:dcex/shared/market/data/models/futures_ticker_model.dart';
import 'package:dcex/shared/market/data/models/options_ticker_model.dart';
import 'package:dcex/shared/market/data/models/spot_ticker_model.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/utils/debouncer.dart';
import 'package:dcex/shared/ws_service.dart';
import 'package:dcex/shared/utils/logger.dart';

class WsTickerManager {
  final WsService _wsService;
  WsTickerManager(this._wsService) {
    _wsService.stream.listen(_handleTicker);
  }

  // Ref count for each symbol
  final Map<String, int> _subscriptionCounts = {};

  /// Cache last value, diff
  final Map<String, TickerEntity> _lastValues = {};

  // Symbol to TickerEntity controller
  final Map<String, StreamController<TickerEntity>> _tickerControllers = {};

  // Debouncers
  final Map<String, Debouncer> _debouncers = {};

  Stream<TickerEntity> getTicker(String symbol) {
    final controller = _getController(symbol);
    return controller.stream;
  }

  TickerEntity? getLastValue(String symbol) {
    return _lastValues[symbol];
  }

  Set<String> getAllSymbols() {
    return _tickerControllers.keys.toSet();
  }

  Set<String> getAllActiveSymbols() {
    return _subscriptionCounts.entries
        .where((e) => e.value > 0)
        .map((e) => e.key)
        .toSet();
  }

  void dispose() {
    _tickerControllers.forEach((symbol, controller) {
      controller.close();
    });
    _tickerControllers.clear();

    _debouncers.forEach((symbol, debouncer) {
      debouncer.dispose();
    });
    _debouncers.clear();

    _wsService.close();

    _subscriptionCounts.clear();

    _lastValues.clear();
  }

  /// Subscribe to ticker stream
  Stream<TickerEntity> subscribe(String symbol) {
    // Remove old debouncer
    if (_debouncers.containsKey(symbol)) {
      _debouncers.remove(symbol)?.dispose();
    }

    // Increasing refcount
    _subscriptionCounts[symbol] = (_subscriptionCounts[symbol] ?? 0) + 1;
    if (_subscriptionCounts[symbol] == 1) {
      _sendSubscribe(symbol);
    }

    // Return existing or create new controller
    final controller = _getController(symbol);

    return controller.stream;
  }

  /// Resubscribe, just call subscribe() again
  Stream<TickerEntity> resubscribe(String symbol) {
    return subscribe(symbol);
  }

  /// Delay unsubscribe
  Future<void> unsubscribeDealy(String symbol, Duration delay) {
    final controller = _tickerControllers[symbol];
    // Clear old
    _debouncers.remove(symbol)?.dispose();
    // Return
    if (controller == null) {
      return Future.value();
    }
    // Create new debouncer
    final debouncer = Debouncer(delay: delay);
    final completer = Completer<void>();

    _debouncers[symbol] = debouncer;
    debouncer.run(() {
      unsubscribe(symbol);
      completer.complete();
    });
    return completer.future;
  }

  /// Unsubscribe from ticker stream
  void unsubscribe(String symbol) {
    final count = _subscriptionCounts[symbol] ?? 0;
    if (count <= 0) {
      logInfo("⚠️ Already unsubscribed or never subscribed: $symbol");
      return;
    }
    _subscriptionCounts[symbol] = count - 1;

    if (_subscriptionCounts[symbol] == 0) {
      _performUnsubscribe(symbol);
    }
  }

  StreamController<TickerEntity> _getController(String symbol) {
    final controller = _tickerControllers.putIfAbsent(symbol, () {
      return StreamController<TickerEntity>.broadcast();
    });
    return controller;
  }

  void _performUnsubscribe(String symbol) {
    // logInfo('❌ unsubscribe: $symbol');
    // Close controller
    _tickerControllers.remove(symbol)?.close();
    // Remove debouncer
    _debouncers.remove(symbol)?.dispose();
    // Clear refcount
    _subscriptionCounts.remove(symbol);
    // Clear last value
    // _lastValues.remove(symbol);
    // Send unsubscribe message
    _sendUnsubscribe(symbol);
  }

  // 1. subscribe
  void _sendSubscribe(String symbol) {
    _wsService.send({
      'action': 'subscribe',
      'symbol': symbol,
      'marketType': 'future',
    });
  }

  // 2. unsubscribe
  void _sendUnsubscribe(String symbol) {
    _wsService.send({'action': 'unsubscribe', 'symbol': symbol});
  }

  void _handleTicker(Map<String, dynamic> msg) {
    // Message: {"type": "ticker", "data": {json payload}}
    // logInfo('🎉 handle: $msg');
    final tickerPayload = ApiResponse.fromJson(msg, null);
    final data = tickerPayload.data as Map<String, dynamic>;

    final type = tickerPayload.type;
    if (type == 'ticker') {
      _handleTickerMessage(data);
    }
  }

  void _handleTickerMessage(Map<String, dynamic> data) {
    // Check
    final symbol = data['symbol'];
    if (symbol == null) return;
    // Double check
    final controller = _tickerControllers[symbol];
    if (controller == null) return;

    // Diff, 为了简单，直接使用对象比较，如果为了精细、节省性能，直接使用json的原始数据对比上一次的对象，避免了json到model的解析
    // 但是不能直接使用模型对比，因为有些数据，例如时间戳是永远变化的、有些数据不显示是不是考虑不参与diff，
    // 另外，server有一套根据精度的diff逻辑，但是client显示小数点后几位数在不同场景下不一样，diff的逻辑是不同的 如果需要可以增加不同的diff逻辑
    // 这里刨除时间戳，简单对比其他值相等
    // final ticker = TickerEntity.fromJson(payload);
    TickerEntity fromJson(Map<String, dynamic> json) {
      switch (json['marketType']) {
        case 'spot':
          return SpotTickerModel.fromJson(json);
        case 'future':
          return FuturesTickerModel.fromJson(json);
        case 'option':
          return OptionsTickerModel.fromJson(json);
        default:
          throw Exception('Unknown ticker type');
      }
    }

    final ticker = fromJson(data);
    // Send data if needed
    _emit(controller, symbol, ticker);
  }

  void _emit(StreamController controller, String symbol, TickerEntity next) {
    final prev = _lastValues[symbol];
    if (prev != null &&
        prev.last == next.last &&
        prev.high == next.high &&
        prev.low == next.low &&
        prev.baseVolume == next.baseVolume) {
      // volumeQuote不显示，不参与diff
      // prev.volumeQuote == next.volumeQuote;
      logInfo("❌ $symbol: 无变化，不推");
      return; //
    }
    _lastValues[symbol] = next;
    controller.add(next);
  }
}
