// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Exchange _$ExchangeFromJson(Map<String, dynamic> json) => _Exchange(
  id: (json['id'] as num).toInt(),
  symbol: json['symbol'] as String,
  name: json['name'] as String,
  route: json['route'] as String,
  active: json['active'] as bool,
);

Map<String, dynamic> _$ExchangeToJson(_Exchange instance) => <String, dynamic>{
  'id': instance.id,
  'symbol': instance.symbol,
  'name': instance.name,
  'route': instance.route,
  'active': instance.active,
};
