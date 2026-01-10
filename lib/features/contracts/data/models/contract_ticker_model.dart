import 'package:dcex/features/contracts/domain/entities/contract_ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_ticker_model.freezed.dart';
part 'contract_ticker_model.g.dart';

@freezed
abstract class ContractTickerModel
    with _$ContractTickerModel
    implements ContractTicker {
  const factory ContractTickerModel({
    required String symbol,
    required String exchange,
    @Default(0) double fundingRate,
    @Default(0) int nextFundingTime,

    @Default(0) double last,
    @Default(0) double high,
    @Default(0) double low,
    @Default(0) double open,
    @Default(0) double change,
    double? volume24h,
    int? timestamp,
  }) = _ContractTickerModel;

  factory ContractTickerModel.fromJson(Map<String, dynamic> json) =>
      _$ContractTickerModelFromJson(json);
}
