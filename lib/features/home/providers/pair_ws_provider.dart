import 'dart:async';

import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/shared/pairs_summary_manager.dart';
import 'package:dcex/shared/pairs_summary_manager_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dcex/shared/ws_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 需要修改PairsSummaryManager，不remove&colse controller
/// 或者不remove并且在on.Dispose中正确close controller
/// 且才能在再次继续订阅后继续流通数据到UI
final pairSummaryWsProvider1 = StreamProvider.family<PairSummary, String>((
  ref,
  symbol,
) {
  final wsManager = ref.watch(pairSummaryWsManagerProvider);

  ref.onResume(() {
    wsManager.whenData((manager) {
      manager.resubscribe(symbol);
    });
    // Future.microtask(() {
    //   ref.invalidateSelf(asReload: true); // 重新执行 builder
    // });
    logInfo('🏠 ws resume');
  });
  ref.onRemoveListener(() {
    logInfo('🏠 ws remove listener');
  });
  ref.onDispose(() {
    logInfo('🏠 ws dispose');
  });
  ref.onCancel(() {
    wsManager.whenData((manager) {
      manager.unsubscribeDealy(symbol, Duration(seconds: 3));
    });
    logInfo('🏠 ws cancel');
  });
  ref.onAddListener(() {
    logInfo('🏠 ws add listen');
  });

  return wsManager.when(
    data: (manager) {
      return manager.subscribe(symbol);
    },
    error: (Object error, StackTrace stackTrace) {
      return const Stream.empty();
    },
    loading: () {
      return const Stream.empty();
    },
    skipLoadingOnReload: true,
  );
});

/// 使用桥接Stream中转数据，内部的streamController不close
final pairSummaryWsProvider2 = StreamProvider.family<PairSummary, String>((
  ref,
  symbol,
) {
  final wsManager = ref.watch(pairSummaryWsManagerProvider);

  //   创建一个永久的桥接 Controller
  final bridgeController = StreamController<PairSummary>.broadcast();

  StreamSubscription? subscription;
  logInfo('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  logInfo('🏗️ Provider created for: $symbol');
  logInfo('🌉 bridgeController hashCode: ${bridgeController.hashCode}');
  logInfo('👔 wsManager hashCode: ${wsManager.value?.hashCode}');
  logInfo('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  void startListening() {
    wsManager.whenData((manager) {
      subscription?.cancel();
      subscription = manager
          .subscribe(symbol)
          .listen(
            (data) {
              if (!bridgeController.isClosed) {
                bridgeController.add(data); // 转发到桥接 Stream
                // logInfo('bridge data: $data');
              }
            },
            onError: (e) {
              if (!bridgeController.isClosed) {
                bridgeController.addError(e);
              }
            },
            onDone: () {},
          );
    });
  }

  // 初始订阅
  startListening();

  ref.onCancel(() {
    subscription?.cancel();
    wsManager.whenData((manager) {
      manager.unsubscribeDealy(symbol, Duration(seconds: 3));
    });
    logInfo('🏠 ws cancel');
  });

  ref.onResume(() {
    //   重新订阅，数据会流向同一个 bridgeController
    startListening();
    logInfo('🏠 ws resume');
  });

  ref.onDispose(() {
    subscription?.cancel();
    bridgeController.close();
    logInfo('🏠 ws dispose');
  });

  //   返回桥接 Stream，Riverpod 一直监听这个不变的 Stream
  return bridgeController.stream;
});

/// 主要验证keepAlive + autoDispose的行为
final pairSummaryWsProvider3 = StreamProvider.autoDispose
    .family<PairSummary, String>((ref, symbol) {
      final link = ref.keepAlive();

      final wsManager = ref.watch(pairSummaryWsManagerProvider);

      //   创建一个永久的桥接 Controller
      final bridgeController = StreamController<PairSummary>.broadcast();

      StreamSubscription? subscription;
      void startListening() {
        wsManager.whenData((manager) {
          subscription?.cancel();
          subscription = manager
              .subscribe(symbol)
              .listen(
                (data) {
                  if (!bridgeController.isClosed) {
                    bridgeController.add(data); // 转发到桥接 Stream
                    // logInfo('bridge data: $data');
                  }
                },
                onError: (e) {
                  if (!bridgeController.isClosed) {
                    bridgeController.addError(e);
                  }
                },
                onDone: () {},
              );
        });
      }

      // 初始订阅
      startListening();

      ref.onCancel(() {
        subscription?.cancel();
        wsManager.whenData((manager) {
          // manager
          //     .unsubscribeDealy(symbol, Duration(seconds: 3))
          //     .then((_) => link.close());
          () async {
            await manager.unsubscribeDealy(symbol, Duration(seconds: 3));
            link.close();
          }();
        });
        logInfo('🏠 ws cancel');
      });

      ref.onResume(() {
        // 重新订阅，数据会流向同一个 bridgeController
        startListening();
        logInfo('🏠 ws resume');
      });

      ref.onDispose(() {
        subscription?.cancel();
        bridgeController.close();
        logInfo('🏠 ws dispose');
      });

      // 返回桥接 Stream，Riverpod 一直监听这个不变的 Stream
      return bridgeController.stream;
    });

/// autoDispose + cache
final pairSummaryWsProvider = StreamProvider.autoDispose
    .family<PairSummary, String>((ref, symbol) {
      final wsManager = ref.watch(pairSummaryWsManagerProvider);

      late StreamController<PairSummary> bridgeController;
      // 创建一个永久的桥接 Controller
      bridgeController = StreamController<PairSummary>.broadcast(
        onListen: () {
          // 1.先使用缓存值
          if (wsManager.hasValue) {
            final manager = wsManager.requireValue;
            final cache = manager.getLastValue(symbol);
            if (cache != null) {
              bridgeController.add(cache);
              logInfo('📦 Initial cache for $symbol');
            }
          }
        },
      );

      StreamSubscription? subscription;
      // logInfo('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      // logInfo('🏗️ Provider created for: $symbol');
      // logInfo('🌉 bridgeController hashCode: ${bridgeController.hashCode}');
      // logInfo('👔 wsManager hashCode: ${wsManager.value?.hashCode}');
      // logInfo('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      void startListening() {
        // 再使用推送的新值
        wsManager.whenData((manager) {
          subscription?.cancel();
          subscription = manager
              .subscribe(symbol)
              .listen(
                (data) {
                  if (!bridgeController.isClosed) {
                    bridgeController.add(data); // 转发到桥接 Stream
                    // logInfo('bridge data: $data');
                  }
                },
                onError: (e) {
                  if (!bridgeController.isClosed) {
                    bridgeController.addError(e);
                  }
                },
                onDone: () {},
              );
        });
      }

      // 初始订阅
      startListening();

      ref.onCancel(() {
        subscription?.cancel();
        wsManager.whenData((manager) {
          manager.unsubscribeDealy(symbol, Duration(seconds: 3));
        });
        logInfo('🏠 ws cancel');
      });

      ref.onResume(() {
        //   重新订阅，数据会流向同一个 bridgeController
        startListening();
        logInfo('🏠 ws resume');
      });

      ref.onDispose(() {
        subscription?.cancel();
        bridgeController.close();
        logInfo('🏠 ws dispose');
      });

      //   返回桥接 Stream，Riverpod 一直监听这个不变的 Stream
      return bridgeController.stream;
    });
