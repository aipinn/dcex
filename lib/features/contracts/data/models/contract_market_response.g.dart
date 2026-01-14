// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_market_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContractMarketResponse _$ContractMarketResponseFromJson(
  Map<String, dynamic> json,
) => _ContractMarketResponse(
  result: (json['result'] as List<dynamic>)
      .map((e) => ContractMarketModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] as Map<String, dynamic>,
);

Map<String, dynamic> _$ContractMarketResponseToJson(
  _ContractMarketResponse instance,
) => <String, dynamic>{
  'result': instance.result,
  'pagination': instance.pagination,
};
