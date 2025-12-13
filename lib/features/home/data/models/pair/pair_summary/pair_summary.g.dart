// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PairSummary _$PairSummaryFromJson(Map<String, dynamic> json) => _PairSummary(
  symbol: json['symbol'] as String,
  price: Price.fromJson(json['price'] as Map<String, dynamic>),
  volume: (json['volume'] as num).toDouble(),
  volumeQuote: (json['volumeQuote'] as num).toDouble(),
  timestamp: (json['timestamp'] as num).toInt(),
);

Map<String, dynamic> _$PairSummaryToJson(_PairSummary instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'price': instance.price,
      'volume': instance.volume,
      'volumeQuote': instance.volumeQuote,
      'timestamp': instance.timestamp,
    };
