import 'dart:async';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/pairs_summary_manager_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pairSummaryWsProvider = StreamNotifierProvider.autoDispose
    .family<PairSummaryNotifier, TickerEntity, String>(PairSummaryNotifier.new);

class PairSummaryNotifier extends StreamNotifier<TickerEntity> {
  final String symbol;

  PairSummaryNotifier(this.symbol);

  @override
  Stream<TickerEntity> build() {
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
