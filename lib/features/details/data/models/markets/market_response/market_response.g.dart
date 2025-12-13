// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResultWrapper _$ResultWrapperFromJson(Map<String, dynamic> json) =>
    _ResultWrapper(
      spot: (json['spot'] as List<dynamic>)
          .map((e) => Pair.fromJson(e as Map<String, dynamic>))
          .toList(),
      future: (json['future'] as List<dynamic>)
          .map((e) => Pair.fromJson(e as Map<String, dynamic>))
          .toList(),
      option: (json['option'] as List<dynamic>)
          .map((e) => Pair.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultWrapperToJson(_ResultWrapper instance) =>
    <String, dynamic>{
      'spot': instance.spot,
      'future': instance.future,
      'option': instance.option,
    };

_MarketResponse _$MarketResponseFromJson(Map<String, dynamic> json) =>
    _MarketResponse(
      result: ResultWrapper.fromJson(json['result'] as Map<String, dynamic>),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mode: json['mode'] as String?,
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      market: json['market'] as String?,
      exchange: json['exchange'] as String?,
    );

Map<String, dynamic> _$MarketResponseToJson(_MarketResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'groups': instance.groups,
      'mode': instance.mode,
      'total': instance.total,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'market': instance.market,
      'exchange': instance.exchange,
    };
