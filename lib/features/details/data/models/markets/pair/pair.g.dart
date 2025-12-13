// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pair _$PairFromJson(Map<String, dynamic> json) => _Pair(
  id: (json['id'] as num?)?.toInt(),
  exchange: json['exchange'] as String,
  pair: json['pair'] as String,
  active: json['active'] as bool?,
  type: json['type'] as String?,
  route: json['route'] as String?,
);

Map<String, dynamic> _$PairToJson(_Pair instance) => <String, dynamic>{
  'id': instance.id,
  'exchange': instance.exchange,
  'pair': instance.pair,
  'active': instance.active,
  'type': instance.type,
  'route': instance.route,
};
