import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/features/home/providers/home_ux_provider.dart';
import 'package:dcex/shared/pairs_summary_manager_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeWsSubscriptionController {
  HomeWsSubscriptionController(this.ref);

  final WidgetRef ref;

  void updateVisibleSymbols(
    ScrollController scrollController,
    double tileHeight, {
    int buffer = 4,
  }) {
    // if (!scrollController.hasClients) return;
    if (!scrollController.hasClients) {
      // 自动延迟到准备好时
      WidgetsBinding.instance.addPostFrameCallback((_) {
        updateVisibleSymbols(scrollController, tileHeight, buffer: buffer);
      });
      return;
    }

    final position = scrollController.position;
    final viewportHeight = position.viewportDimension;
    final offset = position.pixels;

    final firstVisibleIndex = (offset / tileHeight).floor();
    final lastVisibleIndex = ((offset + viewportHeight) / tileHeight).ceil();

    final start = (firstVisibleIndex - buffer).clamp(
      0,
      position.maxScrollExtent ~/ tileHeight,
    );
    final end = (lastVisibleIndex + buffer).clamp(
      start,
      position.maxScrollExtent ~/ tileHeight + 10,
    );

    final pairs = ref.read(pairsProvider).value ?? [];
    final targetSet = <String>{};

    for (int i = start; i < end && i < pairs.length; i++) {
      targetSet.add(pairs[i].pair);
    }

    ref.read(targetSymbolsProvider.notifier).updateSymbols(targetSet);

    _subscribeHandle(targetSet);
  }

  void _subscribeHandle(Set<String> targetSet) {
    final manager = ref.watch(pairSummaryWsManagerProvider).value;
    if (manager == null) {
      logWarning(
        'pairSummaryWsManager is not ready yet, skipping subscription.',
      );
      return;
    }
    final activeSymbols = manager.getAllActiveSymbols();
    final unsubSet = activeSymbols.difference(targetSet);
    final newSubSet = targetSet.difference(activeSymbols);
    logInfo(
      'home subscribe target: $targetSet, active: $activeSymbols, new: $newSubSet, unsubscribe: $unsubSet',
    );
    for (final symbol in newSubSet) {
      manager.subscribe(symbol);
    }
    for (final symbol in unsubSet) {
      manager.unsubscribe(symbol);
    }
  }
}
