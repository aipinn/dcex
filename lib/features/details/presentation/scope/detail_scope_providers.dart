// detail_scope_providers.dart
import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDetailPair = Provider<Pair>((ref) {
  throw UnimplementedError('currentDetailPair must be overridden');
});

final currentDetailPairSummary = Provider<PairSummary>((ref) {
  throw UnimplementedError('currentDetailPairSummary must be overridden');
});
