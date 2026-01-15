import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dcex/shared/ws_manager_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'futures_ws_provider.g.dart';

final pairFutureWsProvider = StreamProvider.autoDispose
    .family<TickerEntity, String>((ref, symbol) {
      final managerAsync = ref.watch(wsTickerManagerProvider);
      ref.onCancel(() {
        logInfo('Future ws cancel: $symbol');
      });
      ref.onAddListener(() {
        logInfo('Future ws addListener: $symbol');
      });

      return managerAsync.when(
        data: (manager) {
          ref.onDispose(() {
            logInfo('Future ws dispose: $symbol');
            manager.unsubscribe(symbol);
          });
          return manager.subscribe(symbol);
        },
        loading: () => const Stream.empty(),
        error: (_, __) => const Stream.empty(),
      );
    });

@riverpod
class FutureOrderbookWs extends _$FutureOrderbookWs {
  @override
  Stream<OrderBook> build(String symbol) {
    final managerAsync = ref.watch(wsOrderbookManagerProvider)!;
    ref.onCancel(() {
      logInfo('Future orderbook ws cancel: $symbol');
    });
    ref.onAddListener(() {
      logInfo('Future orderbook ws addListener: $symbol');
    });

    // // 先吐一次缓存（如果有）
    // final cached = manager.getLastValue(symbol);
    // if (cached != null) {
    //   state = AsyncValue.data(cached);
    // }

    return managerAsync.when(
      data: (manager) {
        ref.onDispose(() {
          logInfo('Future orderbook ws dispose: $symbol');
          manager.unsubscribe(symbol);
        });
        return manager.subscribe(symbol);
      },
      loading: () => const Stream.empty(),
      error: (_, __) => const Stream.empty(),
    );
  }
}
