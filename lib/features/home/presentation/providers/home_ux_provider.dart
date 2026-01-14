import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/shared/ws_ticker_manager.dart';
import 'package:dcex/shared/ws_ticker_manager_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isListScrolingProvider =
    NotifierProvider.autoDispose<IsListScrollingNotifier, bool>(
      IsListScrollingNotifier.new,
    );

class IsListScrollingNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void startScrolling() => state = true;
  void stopScrolling() => state = false;
}

final targetSymbolsProvider =
    NotifierProvider.autoDispose<TargetSymbolsNotifier, Set<String>>(
      TargetSymbolsNotifier.new,
    );

class TargetSymbolsNotifier extends Notifier<Set<String>> {
  @override
  Set<String> build() {
    return Set<String>.identity();
  }

  void addSymbol(String symbol) {
    state = {...state, symbol};
  }

  void removeSymbol(String symbol) {
    state = {...state}..remove(symbol);
  }

  void updateSymbols(Set<String> symbols) {
    state = symbols;
  }
}

final shouldSubScibeProvider = Provider.autoDispose.family<bool, String>((
  ref,
  symbol,
) {
  final targetSet = ref.watch(targetSymbolsProvider);
  return targetSet.contains(symbol);
});

// 1. 定义一个表示首页准备就绪的状态
class HomeReadyState extends Equatable {
  final List<Pair> pairs;
  final WsTickerManager wsManager;

  const HomeReadyState(this.pairs, this.wsManager);

  @override
  List<Object?> get props => [pairs, wsManager];
}

final homeReadyProvider = Provider<AsyncValue<HomeReadyState>>((ref) {
  final pairsAsync = ref.watch(pairsProvider);
  final wsManagerAsync = ref.watch(wsTickerManagerProvider);
  // logInfo('🌞 home ready build');
  if (pairsAsync.isLoading || wsManagerAsync.isLoading) {
    return const AsyncLoading();
  }

  if (pairsAsync.hasError) {
    return AsyncError(pairsAsync.error!, pairsAsync.stackTrace!);
  }
  if (wsManagerAsync.hasError) {
    return AsyncError(wsManagerAsync.error!, wsManagerAsync.stackTrace!);
  }
  // 两者都成功，组合成 ready 状态
  return AsyncData(
    HomeReadyState(pairsAsync.requireValue, wsManagerAsync.requireValue),
  );
});
