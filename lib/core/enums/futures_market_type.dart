/// Futures Market Type
enum FuturesMarketType { usdM, coinM, options, smartMoney }

extension FuturesMarketTypeX on FuturesMarketType {
  String get rawValue {
    switch (this) {
      case FuturesMarketType.usdM:
        return 'USDⓈ-M';
      case FuturesMarketType.coinM:
        return 'COIN-M';
      case FuturesMarketType.options:
        return 'Options';
      case FuturesMarketType.smartMoney:
        return 'Smart Money';
    }
  }
}
