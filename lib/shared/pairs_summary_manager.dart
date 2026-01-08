import 'dart:async';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/shared/ws_service.dart';
import 'package:dcex/shared/utils/logger.dart';

class PairsSummaryManager {
  final WsService _wsService;
  PairsSummaryManager(this._wsService) {
    _wsService.stream.listen(_handleTicker);
  }

  // Ref count for each symbol
  final Map<String, int> _subscriptionCounts = {};

  /// Cache last value, diff
  final Map<String, PairSummary> _lastValues = {};

  // Symbol to PairSummary controller
  final Map<String, StreamController<PairSummary>> _tickerControllers = {};

  // Debouncers
  final Map<String, Debouncer> _debouncers = {};

  Stream<PairSummary> getTicker(String symbol) {
    final controller = _getController(symbol);
    return controller.stream;
  }

  PairSummary? getLastValue(String symbol) {
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
  Stream<PairSummary> subscribe(String symbol) {
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
  Stream<PairSummary> resubscribe(String symbol) {
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

  StreamController<PairSummary> _getController(String symbol) {
    final controller = _tickerControllers.putIfAbsent(symbol, () {
      return StreamController<PairSummary>.broadcast();
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
    _wsService.send({'action': 'subscribe', 'symbol': symbol});
  }

  // 2. unsubscribe
  void _sendUnsubscribe(String symbol) {
    _wsService.send({'action': 'unsubscribe', 'symbol': symbol});
  }

  void _handleTicker(Map<String, dynamic> msg) {
    // Message: {"type": "ticker", "data": {json payload}}
    // logInfo('🎉 handle: $msg');
    final type = msg['type'];
    if (type == 'ticker') {
      _handleTickerMessage(msg);
    }
  }

  void _handleTickerMessage(Map<String, dynamic> data) {
    // Unload
    final payload = data['data'];
    if (payload == null) return;
    // Check
    final symbol = payload['symbol'];
    if (symbol == null) return;
    // Double check
    final controller = _tickerControllers[symbol];
    if (controller == null) return;

    // Diff, 为了简单，直接使用对象比较，如果为了精细、节省性能，直接使用json的原始数据对比上一次的对象，避免了json到model的解析
    // 但是不能直接使用模型对比，因为有些数据，例如时间戳是永远变化的、有些数据不显示是不是考虑不参与diff，
    // 另外，server有一套根据精度的diff逻辑，但是client显示小数点后几位数在不同场景下不一样，diff的逻辑是不同的 如果需要可以增加不同的diff逻辑
    // 这里刨除时间戳，简单对比其他值相等
    final ticker = PairSummary.fromJson(payload);
    // Send data if needed
    _emit(controller, symbol, ticker);
  }

  void _emit(StreamController controller, String symbol, PairSummary next) {
    final prev = _lastValues[symbol];
    if (prev != null &&
        prev.price.last == next.price.last &&
        prev.price.high == next.price.high &&
        prev.price.low == next.price.low &&
        prev.volume == next.volume) {
      // volumeQuote不显示，不参与diff
      // prev.volumeQuote == next.volumeQuote;
      logInfo("❌ $symbol: 无变化，不推");
      return; //
    }
    _lastValues[symbol] = next;
    controller.add(next);
  }
}

// 1.	provider 生命周期延长：不 autoDispose，或者加 keepAlive()
// 2.	延迟 unsubscribe：滚动滑出屏幕时短延迟取消
// 3.	缓存 ticker：取消订阅后仍显示最后数据
// 4.	去重 sendMessage：重复订阅同一 symbol 不重复发
// 5.	UI 只在数据变化更新：避免无效 rebuild

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  run(Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
