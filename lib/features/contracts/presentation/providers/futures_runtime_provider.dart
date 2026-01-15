import 'dart:async';

import 'package:dcex/features/contracts/presentation/providers/contract_market_selection_provider.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_ws_provider.dart';
import 'package:dcex/shared/market/domain/entities/futures_ticker.dart';
import 'package:dcex/shared/utils/count_down.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'futures_runtime_provider.g.dart';

/// Current Inverse Entity Provider
final currentInverseEntityProvider =
    Provider.autoDispose<AsyncValue<FuturesTickerEntity>>((ref) {
      final marketAsync = ref.watch(selectedInverseContractMarketProvider);

      return marketAsync.when(
        loading: () => const AsyncLoading(),
        error: (e, st) => AsyncError(e, st),
        data: (market) {
          final tickerAsync = ref.watch(pairFutureWsProvider(market.symbol));

          return tickerAsync.when(
            data: (ticker) => AsyncData(ticker as FuturesTickerEntity),
            loading: () => const AsyncLoading(),
            error: (e, st) => AsyncError(e, st),
          );
        },
      );
    });

@riverpod
class CurrentInverseOrderBookUI extends _$CurrentInverseOrderBookUI {
  @override
  FuturesTickerEntity? build() {
    final tickerAsync = ref.watch(currentInverseEntityProvider);
    return tickerAsync.maybeWhen(data: (ticker) => ticker, orElse: () => null);
  }
}

@riverpod
String? currentInverseSymbol(Ref ref) {
  final tickerAsync = ref.watch(currentInverseEntityProvider);
  return tickerAsync.maybeWhen(
    orElse: () => null,
    data: (ticker) => ticker.symbol,
  );
}

@riverpod
class UsdtFundingCountdown extends _$UsdtFundingCountdown {
  Timer? _timer;
  int _target = 0;

  @override
  Countdown? build() {
    final tickerAync = ref.watch(currentInverseEntityProvider);

    tickerAync.whenData((ticker) {
      final nextFundingTime = ticker.getNextFundingTime;
      _start(nextFundingTime);
    });

    ref.onDispose(() {
      _timer?.cancel();
    });

    return null;
  }

  void _start(int nextFundingTime) {
    _target = nextFundingTime ~/ 1000;

    _tick(); // 立刻算一次
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _tick();
    });
  }

  void _tick() {
    final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final remain = _target - now;
    state = Countdown(remain > 0 ? remain : 0);
  }
}
