import 'package:dcex/shared/market/domain/entities/futures_ticker.dart';
import 'package:dcex/shared/market/domain/entities/market_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'futures_ticker_model.freezed.dart';
part 'futures_ticker_model.g.dart';

@freezed
abstract class FuturesTickerModel
    with _$FuturesTickerModel
    implements FuturesTickerEntity {
  const FuturesTickerModel._();

  const factory FuturesTickerModel({
    required String symbol,
    @Default(MarketCategory.perpetual) MarketCategory category,
    required double last,
    required double open,
    required double high,
    required double low,
    required double bid,
    required double ask,
    required double change,
    required double percentage,
    required double baseVolume,
    required double quoteVolume,
    required int timestamp,
    double? vwap,
    Map<String, dynamic>? info,

    // 衍生品核心字段
    @JsonKey(fromJson: _toDouble) double? markPrice,
    double? indexPrice,
    double? fundingRate,
    int? nextFundingTime,
    double? estimatedSettlePrice, // 这里补全字段
    double? openInterest,
    double? openInterestAmount,
    double? impliedFundingRate,
  }) = _FuturesTickerModel;

  @override
  get getNextFundingTime => nextFundingTime ?? 0;

  @override
  get getFundingRate => fundingRate ?? 0;

  factory FuturesTickerModel.fromJson(Map<String, dynamic> json) =>
      _$FuturesTickerModelFromJson(json);
}

double? _toDouble(dynamic v) {
  if (v == null) return null;
  if (v is num) return v.toDouble();
  if (v is String) return double.tryParse(v);
  return null;
}

int? _toInt(dynamic v) {
  if (v == null) return null;
  if (v is num) return v.toInt();
  if (v is String) return int.tryParse(v);
  return null;
}
