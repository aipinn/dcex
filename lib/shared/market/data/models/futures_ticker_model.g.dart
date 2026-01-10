// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'futures_ticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FuturesTickerModel _$FuturesTickerModelFromJson(Map<String, dynamic> json) =>
    _FuturesTickerModel(
      symbol: json['symbol'] as String,
      category:
          $enumDecodeNullable(_$MarketCategoryEnumMap, json['category']) ??
          MarketCategory.perpetual,
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
      info: json['info'] as Map<String, dynamic>?,
      markPrice: _toDouble(json['markPrice']),
      indexPrice: (json['indexPrice'] as num?)?.toDouble(),
      fundingRate: (json['fundingRate'] as num?)?.toDouble(),
      nextFundingTime: (json['nextFundingTime'] as num?)?.toInt(),
      estimatedSettlePrice: (json['estimatedSettlePrice'] as num?)?.toDouble(),
      openInterest: (json['openInterest'] as num?)?.toDouble(),
      openInterestAmount: (json['openInterestAmount'] as num?)?.toDouble(),
      impliedFundingRate: (json['impliedFundingRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FuturesTickerModelToJson(_FuturesTickerModel instance) =>
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
      'info': instance.info,
      'markPrice': instance.markPrice,
      'indexPrice': instance.indexPrice,
      'fundingRate': instance.fundingRate,
      'nextFundingTime': instance.nextFundingTime,
      'estimatedSettlePrice': instance.estimatedSettlePrice,
      'openInterest': instance.openInterest,
      'openInterestAmount': instance.openInterestAmount,
      'impliedFundingRate': instance.impliedFundingRate,
    };

const _$MarketCategoryEnumMap = {
  MarketCategory.spot: 'spot',
  MarketCategory.perpetual: 'perpetual',
  MarketCategory.delivery: 'delivery',
  MarketCategory.option: 'option',
  MarketCategory.margin: 'margin',
  MarketCategory.leveragedToken: 'leveragedToken',
};
