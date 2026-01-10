// domain/entities/ticker/options_ticker_entity.dart
import 'package:dcex/shared/market/domain/entities/market_category.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';

enum OptionType { call, put }

abstract class OptionsTickerEntity implements TickerEntity {
  /// 交易对符号
  @override
  String get symbol;

  /// 市场分类（固定为 option）
  @override
  MarketCategory get category => MarketCategory.option;

  /// 最新成交价（Last Price）
  @override
  double get last;

  /// 24h 开盘价
  @override
  double get open;

  /// 24h 最高价
  @override
  double get high;

  /// 24h 最低价
  @override
  double get low;

  /// 当前最优买价（Best Bid）
  @override
  double get bid;

  /// 当前最优卖价（Best Ask）
  @override
  double get ask;

  /// 24h 价格变化绝对值
  @override
  double get change;

  /// 24h 涨跌幅百分比
  @override
  double get percentage;

  /// 基础货币成交量（Base Volume，张数）
  @override
  double get baseVolume;

  /// 计价货币成交量（Quote Volume）
  @override
  double get quoteVolume;

  /// 数据时间戳（服务器时间）
  @override
  int get timestamp;

  /// 加权平均价（VWAP）
  @override
  double? get vwap;

  /// 原始返回数据（用于调试或特殊字段）
  @override
  Map<String, dynamic>? get info;

  // ── 期权核心字段 ──
  /// 行权价（Strike Price）
  double get strikePrice;

  /// 到期时间（Expiry Date）
  int get expiryDate;

  /// 期权类型（Call / Put）
  OptionType get optionType;

  /// Delta（价格敏感度）
  double? get delta;

  /// Gamma（Delta 变化率）
  double? get gamma;

  /// Theta（时间衰减）
  double? get theta;

  /// Vega（波动率敏感度）
  double? get vega;

  /// Rho（利率敏感度）
  double? get rho;

  /// 隐含波动率（Implied Volatility，IV，最重要指标之一）
  double? get impliedVolatility;

  /// 标的资产当前价格（Underlying Price，通常是指数或现货价格）
  double? get underlyingPrice;
}
