// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funding_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FundingRateModel _$FundingRateModelFromJson(Map<String, dynamic> json) =>
    _FundingRateModel(
      symbol: json['symbol'] as String,
      exchange: json['exchange'] as String,
      fundingRate: (json['fundingRate'] as num?)?.toDouble(),
      nextFundingTime: (json['nextFundingTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FundingRateModelToJson(_FundingRateModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'exchange': instance.exchange,
      'fundingRate': instance.fundingRate,
      'nextFundingTime': instance.nextFundingTime,
    };
