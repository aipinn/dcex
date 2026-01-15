// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'futures_ws_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FutureOrderbookWs)
const futureOrderbookWsProvider = FutureOrderbookWsFamily._();

final class FutureOrderbookWsProvider
    extends $StreamNotifierProvider<FutureOrderbookWs, OrderBook> {
  const FutureOrderbookWsProvider._({
    required FutureOrderbookWsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'futureOrderbookWsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$futureOrderbookWsHash();

  @override
  String toString() {
    return r'futureOrderbookWsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FutureOrderbookWs create() => FutureOrderbookWs();

  @override
  bool operator ==(Object other) {
    return other is FutureOrderbookWsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$futureOrderbookWsHash() => r'02ef2afdd787bde46b9beaab07887b4f38e12d03';

final class FutureOrderbookWsFamily extends $Family
    with
        $ClassFamilyOverride<
          FutureOrderbookWs,
          AsyncValue<OrderBook>,
          OrderBook,
          Stream<OrderBook>,
          String
        > {
  const FutureOrderbookWsFamily._()
    : super(
        retry: null,
        name: r'futureOrderbookWsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FutureOrderbookWsProvider call(String symbol) =>
      FutureOrderbookWsProvider._(argument: symbol, from: this);

  @override
  String toString() => r'futureOrderbookWsProvider';
}

abstract class _$FutureOrderbookWs extends $StreamNotifier<OrderBook> {
  late final _$args = ref.$arg as String;
  String get symbol => _$args;

  Stream<OrderBook> build(String symbol);
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
