// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_ticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContractTickerModel _$ContractTickerModelFromJson(Map<String, dynamic> json) =>
    _ContractTickerModel(
      symbol: json['symbol'] as String,
      exchange: json['exchange'] as String,
      fundingRate: (json['fundingRate'] as num?)?.toDouble() ?? 0,
      nextFundingTime: (json['nextFundingTime'] as num?)?.toInt() ?? 0,
      last: (json['last'] as num?)?.toDouble() ?? 0,
      high: (json['high'] as num?)?.toDouble() ?? 0,
      low: (json['low'] as num?)?.toDouble() ?? 0,
      open: (json['open'] as num?)?.toDouble() ?? 0,
      change: (json['change'] as num?)?.toDouble() ?? 0,
      volume24h: (json['volume24h'] as num?)?.toDouble(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContractTickerModelToJson(
  _ContractTickerModel instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'exchange': instance.exchange,
  'fundingRate': instance.fundingRate,
  'nextFundingTime': instance.nextFundingTime,
  'last': instance.last,
  'high': instance.high,
  'low': instance.low,
  'open': instance.open,
  'change': instance.change,
  'volume24h': instance.volume24h,
  'timestamp': instance.timestamp,
};
