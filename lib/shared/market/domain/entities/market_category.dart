// domain/entities/market_category.dart
enum MarketCategory {
  /// 现货交易 (Spot Trading)
  spot,

  /// 永续合约 (Perpetual Futures) - USDT本位 & 币本位永续都放这里最常见
  perpetual,

  /// 交割合约 (Delivery Futures) - 有固定到期日的期货
  delivery,

  /// 期权 (Options)
  option,

  /// 现货杠杆/保证金交易 (Margin Trading)
  margin,

  /// 杠杆代币 (Leveraged Tokens)
  leveragedToken,

  // 未来可能扩展
  // structuredProduct,  // 结构化产品（如双币投资）
  // prediction,         // 预测市场
  // copyTrading,        // 跟单交易（如果算独立市场）

  // 辅助计算属性（强烈推荐写在 extension 里）
}

extension MarketCategoryX on MarketCategory {
  bool get isSpot => this == MarketCategory.spot;

  bool get isDerivative =>
      this == MarketCategory.perpetual ||
      this == MarketCategory.delivery ||
      this == MarketCategory.option ||
      this == MarketCategory.margin;

  bool get isFuturesLike =>
      this == MarketCategory.perpetual || this == MarketCategory.delivery;

  bool get hasFundingRate => this == MarketCategory.perpetual;

  bool get hasGreeks => this == MarketCategory.option;

  String get displayName => switch (this) {
    MarketCategory.spot => '现货',
    MarketCategory.perpetual => '永续合约',
    MarketCategory.delivery => '交割合约',
    MarketCategory.option => '期权',
    MarketCategory.margin => '杠杆现货',
    MarketCategory.leveragedToken => '杠杆代币',
    _ => name,
  };

  String get ccxtDefaultType => switch (this) {
    MarketCategory.spot => 'spot',
    MarketCategory.perpetual => 'swap', // 大部分交易所用 swap 表示永续
    MarketCategory.delivery => 'future', // 有到期日的用 future
    MarketCategory.option => 'option',
    MarketCategory.margin => 'margin',
    _ => 'spot', // fallback
  };
}
