// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_ticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpotTickerModel _$SpotTickerModelFromJson(Map<String, dynamic> json) =>
    _SpotTickerModel(
      symbol: json['symbol'] as String,
      category:
          $enumDecodeNullable(_$MarketCategoryEnumMap, json['category']) ??
          MarketCategory.spot,
      last: (json['last'] as num).toDouble(),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      bid: (json['bid'] as num).toDouble(),
      ask: (json['ask'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      percentage: (json['percentage'] as num).toDouble(),
      baseVolume: (json['baseVolume'] as num).toDouble(),
      quoteVolume: (json['quoteVolume'] as num).toDouble(),
      timestamp: (json['timestamp'] as num).toInt(),
      vwap: (json['vwap'] as num?)?.toDouble(),
      bidVolume: (json['bidVolume'] as num?)?.toDouble(),
      askVolume: (json['askVolume'] as num?)?.toDouble(),
      previousClose: (json['previousClose'] as num?)?.toDouble(),
      info: json['info'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SpotTickerModelToJson(_SpotTickerModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'category': _$MarketCategoryEnumMap[instance.category]!,
      'last': instance.last,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'bid': instance.bid,
      'ask': instance.ask,
      'change': instance.change,
      'percentage': instance.percentage,
      'baseVolume': instance.baseVolume,
      'quoteVolume': instance.quoteVolume,
      'timestamp': instance.timestamp,
      'vwap': instance.vwap,
      'bidVolume': instance.bidVolume,
      'askVolume': instance.askVolume,
      'previousClose': instance.previousClose,
      'info': instance.info,
    };

const _$MarketCategoryEnumMap = {
  MarketCategory.spot: 'spot',
  MarketCategory.perpetual: 'perpetual',
  MarketCategory.delivery: 'delivery',
  MarketCategory.option: 'option',
  MarketCategory.margin: 'margin',
  MarketCategory.leveragedToken: 'leveragedToken',
};
