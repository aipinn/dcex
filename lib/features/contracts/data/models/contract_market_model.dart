import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_market_model.freezed.dart';
part 'contract_market_model.g.dart';

@freezed
abstract class ContractMarketModel
    with _$ContractMarketModel
    implements ContractMarket {
  const ContractMarketModel._();
  const factory ContractMarketModel({
    required String symbol,
    required String base,
    required String quote,
    double? fundingRate, // 资金费率
    @Default(0) int? nextFundingTime, // 下次资金费时间
    required String exchange,
    @Default(false) bool linear,
    @Default(false) bool inverse,
    double? minLeverage, // 最小杠杆倍数
    double? maxLeverage, // 最大杠杆倍数
    @Default('') String? contractType, // Perpetual等
  }) = _ContractMarketModel;

  factory ContractMarketModel.fromJson(Map<String, dynamic> json) =>
      _$ContractMarketModelFromJson(json);
}
