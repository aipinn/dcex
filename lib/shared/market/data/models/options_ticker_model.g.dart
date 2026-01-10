// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options_ticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionsTickerModel _$OptionsTickerModelFromJson(Map<String, dynamic> json) =>
    _OptionsTickerModel(
      symbol: json['symbol'] as String,
      category:
          $enumDecodeNullable(_$MarketCategoryEnumMap, json['category']) ??
          MarketCategory.option,
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
      strikePrice: (json['strikePrice'] as num).toDouble(),
      expiryDate: (json['expiryDate'] as num).toInt(),
      optionType: $enumDecode(_$OptionTypeEnumMap, json['optionType']),
      delta: (json['delta'] as num?)?.toDouble(),
      gamma: (json['gamma'] as num?)?.toDouble(),
      theta: (json['theta'] as num?)?.toDouble(),
      vega: (json['vega'] as num?)?.toDouble(),
      rho: (json['rho'] as num?)?.toDouble(),
      impliedVolatility: (json['impliedVolatility'] as num?)?.toDouble(),
      underlyingPrice: (json['underlyingPrice'] as num?)?.toDouble(),
      markPrice: (json['markPrice'] as num?)?.toDouble(),
      vwap: (json['vwap'] as num?)?.toDouble(),
      info: json['info'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OptionsTickerModelToJson(_OptionsTickerModel instance) =>
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
      'strikePrice': instance.strikePrice,
      'expiryDate': instance.expiryDate,
      'optionType': _$OptionTypeEnumMap[instance.optionType]!,
      'delta': instance.delta,
      'gamma': instance.gamma,
      'theta': instance.theta,
      'vega': instance.vega,
      'rho': instance.rho,
      'impliedVolatility': instance.impliedVolatility,
      'underlyingPrice': instance.underlyingPrice,
      'markPrice': instance.markPrice,
      'vwap': instance.vwap,
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

const _$OptionTypeEnumMap = {OptionType.call: 'call', OptionType.put: 'put'};
