// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExchangeResponse _$ExchangeResponseFromJson(Map<String, dynamic> json) =>
    _ExchangeResponse(
      result: (json['result'] as List<dynamic>)
          .map((e) => Exchange.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExchangeResponseToJson(_ExchangeResponse instance) =>
    <String, dynamic>{'result': instance.result};
