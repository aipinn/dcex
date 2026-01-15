// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Use codegen

@ProviderFor(PairOrderBook)
const pairOrderBookProvider = PairOrderBookFamily._();

/// Use codegen
final class PairOrderBookProvider
    extends $AsyncNotifierProvider<PairOrderBook, OrderBook> {
  /// Use codegen
  const PairOrderBookProvider._({
    required PairOrderBookFamily super.from,
    required Pair super.argument,
  }) : super(
         retry: null,
         name: r'pairOrderBookProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pairOrderBookHash();

  @override
  String toString() {
    return r'pairOrderBookProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PairOrderBook create() => PairOrderBook();

  @override
  bool operator ==(Object other) {
    return other is PairOrderBookProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pairOrderBookHash() => r'7c09c259e8ab66969461bcdabb04472fabe8e55a';

/// Use codegen

final class PairOrderBookFamily extends $Family
    with
        $ClassFamilyOverride<
          PairOrderBook,
          AsyncValue<OrderBook>,
          OrderBook,
          FutureOr<OrderBook>,
          Pair
        > {
  const PairOrderBookFamily._()
    : super(
        retry: null,
        name: r'pairOrderBookProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Use codegen

  PairOrderBookProvider call(Pair pair) =>
      PairOrderBookProvider._(argument: pair, from: this);

  @override
  String toString() => r'pairOrderBookProvider';
}

/// Use codegen

abstract class _$PairOrderBook extends $AsyncNotifier<OrderBook> {
  late final _$args = ref.$arg as Pair;
  Pair get pair => _$args;

  FutureOr<OrderBook> build(Pair pair);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<OrderBook>, OrderBook>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OrderBook>, OrderBook>,
              AsyncValue<OrderBook>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(TradesList)
const tradesListProvider = TradesListFamily._();

final class TradesListProvider
    extends $AsyncNotifierProvider<TradesList, List<Trade>> {
  const TradesListProvider._({
    required TradesListFamily super.from,
    required Pair super.argument,
  }) : super(
         retry: null,
         name: r'tradesListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tradesListHash();

  @override
  String toString() {
    return r'tradesListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TradesList create() => TradesList();

  @override
  bool operator ==(Object other) {
    return other is TradesListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tradesListHash() => r'25443a664e3de1861f67829fb3341d8cf32d0d19';

final class TradesListFamily extends $Family
    with
        $ClassFamilyOverride<
          TradesList,
          AsyncValue<List<Trade>>,
          List<Trade>,
          FutureOr<List<Trade>>,
          Pair
        > {
  const TradesListFamily._()
    : super(
        retry: null,
        name: r'tradesListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TradesListProvider call(Pair pair) =>
      TradesListProvider._(argument: pair, from: this);

  @override
  String toString() => r'tradesListProvider';
}

abstract class _$TradesList extends $AsyncNotifier<List<Trade>> {
  late final _$args = ref.$arg as Pair;
  Pair get pair => _$args;

  FutureOr<List<Trade>> build(Pair pair);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<Trade>>, List<Trade>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Trade>>, List<Trade>>,
              AsyncValue<List<Trade>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
