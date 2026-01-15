import 'dart:async';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/shared/ws_service.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dcex/core/model/api_response.dart';
import 'package:dcex/shared/utils/debouncer.dart';

class WsOrderbookManager {
  final WsService _wsService;
  WsOrderbookManager(this._wsService) {
    _wsService.stream.listen(_handleTicker);
  }

  // Ref count for each symbol
  final Map<String, int> _subscriptionCounts = {};

  /// Cache last value, diff
  final Map<String, OrderBook> _lastValues = {};

  // Symbol to TickerEntity controller
  final Map<String, StreamController<OrderBook>> _tickerControllers = {};

  // Debouncers
  final Map<String, Debouncer> _debouncers = {};

  Stream<OrderBook> getTicker(String symbol) {
    final controller = _getController(symbol);
    return controller.stream;
  }

  OrderBook? getLastValue(String symbol) {
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
  Stream<OrderBook> subscribe(String symbol) {
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
  Stream<OrderBook> resubscribe(String symbol) {
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

  StreamController<OrderBook> _getController(String symbol) {
    final controller = _tickerControllers.putIfAbsent(symbol, () {
      return StreamController<OrderBook>.broadcast();
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
    logInfo('🎉 handle: $msg');
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
    final ticker = OrderBook.fromJson(data);

    // Send data if needed
    _emit(controller, symbol, ticker);
  }

  void _emit(StreamController controller, String symbol, OrderBook next) {
    final prev = _lastValues[symbol];
    // todo: diff
    _lastValues[symbol] = next;
    controller.add(next);
  }
}
