// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContractMarketModel _$ContractMarketModelFromJson(Map<String, dynamic> json) =>
    _ContractMarketModel(
      symbol: json['symbol'] as String,
      base: json['base'] as String,
      quote: json['quote'] as String,
      fundingRate: (json['fundingRate'] as num?)?.toDouble(),
      nextFundingTime: (json['nextFundingTime'] as num?)?.toInt() ?? 0,
      exchange: json['exchange'] as String,
      linear: json['linear'] as bool? ?? false,
      inverse: json['inverse'] as bool? ?? false,
      minLeverage: (json['minLeverage'] as num?)?.toDouble(),
      maxLeverage: (json['maxLeverage'] as num?)?.toDouble(),
      contractType: json['contractType'] as String? ?? '',
    );

Map<String, dynamic> _$ContractMarketModelToJson(
  _ContractMarketModel instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'base': instance.base,
  'quote': instance.quote,
  'fundingRate': instance.fundingRate,
  'nextFundingTime': instance.nextFundingTime,
  'exchange': instance.exchange,
  'linear': instance.linear,
  'inverse': instance.inverse,
  'minLeverage': instance.minLeverage,
  'maxLeverage': instance.maxLeverage,
  'contractType': instance.contractType,
};
