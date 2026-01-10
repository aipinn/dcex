import 'package:dcex/shared/market/domain/entities/market_category.dart';

abstract interface class TickerEntity {
  /// 统一交易对符号（unified symbol）
  /// 例：BTC/USDT、BTC/USDT:USDT、BTC-250328-100000-C
  String get symbol;

  /// 市场大类（用于运行时判断与展示）
  MarketCategory get category;

  /// 最新成交价（last price）
  double get last;

  /// 24h 开盘价
  double get open;

  /// 24h 最高价
  double get high;

  /// 24h 最低价
  double get low;

  /// 当前最优买价（best bid）
  double get bid;

  /// 当前最优卖价（best ask）
  double get ask;

  /// 24h 价格变化绝对值
  double get change;

  /// 24h 涨跌幅百分比
  double get percentage;

  /// 基础货币成交量（base volume）
  double get baseVolume;

  /// 计价货币成交量（quote volume）
  double get quoteVolume;

  /// 数据时间戳（服务器时间）
  int get timestamp;

  /// 加权平均价（VWAP - Volume Weighted Average Price）
  double? get vwap;

  /// raw 原始数据（用于调试或特殊字段）
  Map<String, dynamic>? get info;
}
