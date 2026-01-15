import 'dart:math';

class APIConst {
  static final pair = '/api/pairs';
  static final pairSummary = '/api/summary';
  static final exchanges = '/api/exchanges';
  static final orderBook = '/api/orderbook';
  static final trades = '/api/trades';
  static final ohlc = '/api/ohlc';
  static final ticker = '/api/ticker';

  static final contractMarkets = '/api/contracts/markets';
  static final contractTicker = '/api/contracts/ticker';
  static final contractFundingRate = '/api/contracts/funding_rate';
}

enum WsEndpoint { ticker, orderbook, trades, ohlc }

extension WsEndpointExtension on WsEndpoint {
  String get endpoint {
    switch (this) {
      case WsEndpoint.ticker:
        return "/api/ws/ticker";
      case WsEndpoint.orderbook:
        return "/api/ws/orderbook";
      case WsEndpoint.trades:
        return "/api/ws/trades";
      case WsEndpoint.ohlc:
        return "/api/ws/ohlc";
    }
  }

  String endpointPath(String? exchange) {
    if (exchange != null) {
      return '$endpoint?exchange=$exchange';
    }
    return endpoint;
  }
}
