// detail_scope_providers.dart
import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDetailPair = Provider<Pair>((ref) {
  throw UnimplementedError('currentDetailPair must be overridden');
});

final currentDetailPairSummary = Provider<TickerEntity>((ref) {
  throw UnimplementedError('currentDetail TickerEntity must be overridden');
});
