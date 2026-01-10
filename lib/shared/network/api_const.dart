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
      default:
        return '';
    }
  }

  String endpointPath(String? exchange) {
    switch (this) {
      case WsEndpoint.ticker:
        if (exchange != null) {
          return '/api/ws/ticker?exchange=$exchange';
        }
        return "/api/ws/ticker";
      default:
        return '';
    }
  }
}
