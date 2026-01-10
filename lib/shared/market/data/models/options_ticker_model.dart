import 'package:dcex/shared/market/domain/entities/market_category.dart';
import 'package:dcex/shared/market/domain/entities/options_ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'options_ticker_model.freezed.dart';
part 'options_ticker_model.g.dart';

@freezed
abstract class OptionsTickerModel
    with _$OptionsTickerModel
    implements OptionsTickerEntity {
  const OptionsTickerModel._();

  const factory OptionsTickerModel({
    // 核心统一字段（与其他类型共享）
    required String symbol, // 期权符号，例如 BTC-250328-100000-C
    @Default(MarketCategory.option) MarketCategory category,
    required double last, // 最新成交价（期权报价）
    required double open,
    required double high,
    required double low,
    required double bid,
    required double ask,
    required double change,
    required double percentage,
    required double baseVolume, // 合约数量（张数）
    required double quoteVolume,
    required int timestamp,

    // ── 期权核心专有字段 ──
    required double strikePrice, // 行权价（Strike Price）
    required int expiryDate, // 到期日（Expiry Date）
    required OptionType optionType, // call / put
    // 希腊字母（Greeks） - 大部分交易所不直接在 ticker 返回，需要额外请求
    // 这里全部设为可空，实际使用时可能为 null
    double? delta, // Delta（价格敏感度）
    double? gamma, // Gamma（Delta变化率）
    double? theta, // Theta（时间衰减）
    double? vega, // Vega（波动率敏感度）
    double? rho, // Rho（利率敏感度）
    double? impliedVolatility, // 隐含波动率 IV（最重要指标之一）
    // 其他期权常见字段
    double? underlyingPrice, // 标的资产当前价格
    double? markPrice, // 标记价格（部分期权交易所提供）
    double? vwap, // 加权平均价（VWAP）
    // 原始数据（强烈建议保留）
    Map<String, dynamic>? info,
  }) = _OptionsTickerModel;

  factory OptionsTickerModel.fromJson(Map<String, dynamic> json) =>
      _$OptionsTickerModelFromJson(json);
}
