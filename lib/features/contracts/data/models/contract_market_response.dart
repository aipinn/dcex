import 'package:dcex/features/contracts/data/models/contract_market_model.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_market_response.freezed.dart';
part 'contract_market_response.g.dart';

@freezed
abstract class ContractMarketResponse with _$ContractMarketResponse {
  const factory ContractMarketResponse({
    required List<ContractMarketModel> result,
    required Map<String, dynamic> pagination,
  }) = _ContractMarketResponse;

  factory ContractMarketResponse.fromJson(Map<String, dynamic> json) =>
      _$ContractMarketResponseFromJson(json);
}
