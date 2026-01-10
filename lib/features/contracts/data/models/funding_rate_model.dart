import 'package:dcex/features/contracts/domain/entities/funding_rate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'funding_rate_model.freezed.dart';
part 'funding_rate_model.g.dart';

@freezed
abstract class FundingRateModel with _$FundingRateModel implements FundingRate {
  const FundingRateModel._();

  const factory FundingRateModel({
    required String symbol,
    required String exchange,
    double? fundingRate,
    int? nextFundingTime,
  }) = _FundingRateModel;

  factory FundingRateModel.fromJson(Map<String, dynamic> json) =>
      _$FundingRateModelFromJson(json);
}
