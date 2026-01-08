import 'dart:async';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/shared/pairs_summary_manager_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pairSummaryWsProvider = StreamNotifierProvider.autoDispose
    .family<PairSummaryNotifier, PairSummary, String>(PairSummaryNotifier.new);

class PairSummaryNotifier extends StreamNotifier<PairSummary> {
  final String symbol;

  PairSummaryNotifier(this.symbol);

  @override
  Stream<PairSummary> build() {
    final manager = ref.watch(pairSummaryWsManagerProvider).value!;

    // Emit cached value
    final cached = manager.getLastValue(symbol);
    if (cached != null) {
      state = AsyncValue.data(cached);
    }
    // Get stream and return
    return manager.getTicker(symbol);
  }
}
