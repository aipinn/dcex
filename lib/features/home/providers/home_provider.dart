import 'dart:async';

import 'package:dcex/features/home/data/repositories/home_repository_impl.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange.dart/exchange.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Get exchange list
final exchangesProvider = FutureProvider<List<Exchange>>((ref) async {
  List<Exchange> exchanges = await ref
      .read(homeRepositoryProvider)
      .getExchanges();
  return exchanges;
});

/// Get pair summary
final pairSummaryProvider = FutureProvider.family<PairSummary, Pair>((
  ref,
  pair,
) async {
  final pairSummary = await ref
      .read(homeRepositoryProvider)
      .getPairSummary(pair.exchange, pair.pair);
  return pairSummary;
});

/// 推荐
final pairsProvider = NotifierProvider<PairsNotifier, AsyncValue<List<Pair>>>(
  PairsNotifier.new,
);

class PairsNotifier extends Notifier<AsyncValue<List<Pair>>> {
  @override
  AsyncValue<List<Pair>> build() {
    ref.keepAlive();
    // 初始状态
    state = const AsyncValue.loading();
    ref.onDispose(() {
      logInfo('🔥 PairsNotifier 被销毁');
    });

    ref.onAddListener(() {
      logInfo('🔥 PairsNotifier addListener');
    });

    ref.onRemoveListener(() {
      logInfo('🔥 PairsNotifier removeListener');
    });

    ref.onCancel(() {
      logInfo('🔥 PairsNotifier cancel');
    });

    ref.onResume(() {
      logInfo('🔥 PairsNotifier resume');
    });

    // 监听 exchange 变化
    ref.listen<String?>(
      settingsProvider.select((s) => s.value?.favoriteExchange),
      (previous, next) {
        if (next != null && next != previous) {
          logInfo('❤️ exchange changed: $previous -> $next');
          _fetchPairs(next);
        }
      },
      fireImmediately: true, // 首次立即执行
    );

    return state;
  }

  Future<void> _fetchPairs(String exchange) async {
    logInfo('❤️ fetching pairs for $exchange');
    state = const AsyncValue.loading();

    try {
      final pairs = await ref.read(homeRepositoryProvider).getPairs(exchange);

      logInfo('❤️ fetched ${pairs.length} pairs');
      state = AsyncValue.data(pairs);
    } catch (e, s) {
      logError('❤️ fetch failed: $e');
      state = AsyncValue.error(e, s);
    }
  }

  /// 手动刷新（可选）
  void refresh() {
    final exchange = ref.read(settingsProvider).value?.favoriteExchange;
    if (exchange != null) {
      _fetchPairs(exchange);
    }
  }
}

/// Get pair list
/// 废弃，体验不好
/// 此方案，当切换exchange后，其依赖的settingsProvider改变，会导致pairsProvider dispose，
/// 当返回Home进行watch后重建，此时才去获取最新数据 首页进度loading状态，体验不好，使用NotifierProvider方式
final pairsProvider2 = FutureProvider<List<Pair>>((ref) async {
  logInfo('🔥 pairsProvider 创建');
  ref.onDispose(() {
    logInfo('🔥 pairsProvider 被销毁');
  });

  ref.onAddListener(() {
    logInfo('🔥 pairsProvider addListener');
  });

  ref.onRemoveListener(() {
    logInfo('🔥 pairsProvider removeListener');
  });

  ref.onCancel(() {
    logInfo('🔥 pairsProvider cancel');
  });

  // ✅ 改用这种方式，持续监听 settingsProvider
  final exchangeName = await ref.watch(
    settingsProvider.selectAsync((s) => s.favoriteExchange),
  );

  logInfo('🔥 获取数据: $exchangeName');
  List<Pair> pairs = await ref
      .read(homeRepositoryProvider)
      .getPairs(exchangeName);

  logInfo('🔥 完成: ${pairs.length}');
  return pairs;
});

/// 可行但不推荐的方案
final pairsProvider3 = StreamProvider<List<Pair>>((ref) {
  // ref.keepAlive();

  final controller = StreamController<List<Pair>>();

  logInfo('🌈 pairsStreamProvider create');

  void fetch(String exchange) async {
    logInfo('🌈 fetching pairs for $exchange');
    try {
      final pairs = await ref.read(homeRepositoryProvider).getPairs(exchange);
      controller.add(pairs);
      logInfo('🌈 fetched ${pairs.length} pairs');
    } catch (e, s) {
      controller.addError(e, s);
    }
  }

  // 监听 exchange 变化
  final sub = ref.listen<String?>(
    settingsProvider.select((s) => s.value?.favoriteExchange),
    (prev, next) {
      if (next != null && next != prev) {
        fetch(next);
      }
    },
    fireImmediately: true, // 首次立刻 fetch
  );

  ref.onDispose(() {
    logInfo('🌈 pairsStreamProvider dispose');
    sub.close();
    controller.close();
  });

  return controller.stream;
});
