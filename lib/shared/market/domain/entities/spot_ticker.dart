// domain/entities/ticker/spot_ticker_entity.dart
import 'package:dcex/shared/market/domain/entities/market_category.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';

abstract class SpotTickerEntity implements TickerEntity {
  @override
  final String symbol;

  @override
  final MarketCategory category = MarketCategory.spot;

  @override
  final double last;

  @override
  final double open;

  @override
  final double high;

  @override
  final double low;

  @override
  final double bid;

  @override
  final double ask;

  @override
  final double change;

  @override
  final double percentage;

  @override
  final double baseVolume;

  @override
  final double quoteVolume;

  @override
  final int timestamp;

  @override
  final double? vwap;

  @override
  final Map<String, dynamic>? info;

  SpotTickerEntity({
    required this.symbol,
    required this.last,
    required this.open,
    required this.high,
    required this.low,
    required this.bid,
    required this.ask,
    required this.change,
    required this.percentage,
    required this.baseVolume,
    required this.quoteVolume,
    required this.timestamp,
    required this.vwap,
    required this.info,
  });
}
