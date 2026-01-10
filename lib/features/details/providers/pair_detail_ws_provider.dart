import 'dart:async';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/pairs_summary_manager_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pairDetailWsProvider = StreamProvider.autoDispose
    .family<TickerEntity, String>((ref, symbol) {
      final managerAsync = ref.watch(pairSummaryWsManagerProvider);
      ref.onCancel(() {
        logInfo('detail ws cancel: $symbol');
      });
      ref.onAddListener(() {
        logInfo('detail ws addListener: $symbol');
      });

      return managerAsync.when(
        data: (manager) {
          ref.onDispose(() {
            logInfo('detail ws dispose: $symbol');
            manager.unsubscribe(symbol);
          });
          return manager.subscribe(symbol);
        },
        loading: () => const Stream.empty(),
        error: (_, __) => const Stream.empty(),
      );
    });
