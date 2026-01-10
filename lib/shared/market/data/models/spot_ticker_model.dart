import 'package:dcex/shared/market/domain/entities/market_category.dart';
import 'package:dcex/shared/market/domain/entities/spot_ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'spot_ticker_model.freezed.dart';
part 'spot_ticker_model.g.dart';

@freezed
abstract class SpotTickerModel
    with _$SpotTickerModel
    implements SpotTickerEntity {
  const SpotTickerModel._();

  const factory SpotTickerModel({
    // 核心字段 - 几乎所有现货 ticker 都会有
    required String symbol,
    @Default(MarketCategory.spot) MarketCategory category,
    required double last, // 最新成交价
    required double open, // 24h 开盘价
    required double high, // 24h 最高
    required double low, // 24h 最低
    required double bid, // 最优买价
    required double ask, // 最优卖价
    required double change, // 价格变化绝对值
    required double percentage, // 涨跌幅百分比
    required double baseVolume, // 基础货币成交量
    required double quoteVolume, // 计价货币成交量
    required int timestamp, // 数据时间戳
    // 常用但非必须字段
    double? vwap, // 加权平均价
    double? bidVolume, // 买单挂单量
    double? askVolume, // 卖单挂单量
    double? previousClose, // 前一交易日收盘价（部分交易所）
    // 原始数据保留（调试/扩展用）
    Map<String, dynamic>? info,
  }) = _SpotTickerModel;

  factory SpotTickerModel.fromJson(Map<String, dynamic> json) =>
      _$SpotTickerModelFromJson(json);
}
