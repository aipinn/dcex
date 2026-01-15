// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'futures_runtime_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentInverseOrderBookUI)
const currentInverseOrderBookUIProvider = CurrentInverseOrderBookUIProvider._();

final class CurrentInverseOrderBookUIProvider
    extends $NotifierProvider<CurrentInverseOrderBookUI, FuturesTickerEntity?> {
  const CurrentInverseOrderBookUIProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentInverseOrderBookUIProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentInverseOrderBookUIHash();

  @$internal
  @override
  CurrentInverseOrderBookUI create() => CurrentInverseOrderBookUI();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FuturesTickerEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FuturesTickerEntity?>(value),
    );
  }
}

String _$currentInverseOrderBookUIHash() =>
    r'4b4664c79451fb9c810a8a8d607c31a2ec72c36c';

abstract class _$CurrentInverseOrderBookUI
    extends $Notifier<FuturesTickerEntity?> {
  FuturesTickerEntity? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FuturesTickerEntity?, FuturesTickerEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FuturesTickerEntity?, FuturesTickerEntity?>,
              FuturesTickerEntity?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(currentInverseSymbol)
const currentInverseSymbolProvider = CurrentInverseSymbolProvider._();

final class CurrentInverseSymbolProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const CurrentInverseSymbolProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentInverseSymbolProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentInverseSymbolHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return currentInverseSymbol(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$currentInverseSymbolHash() =>
    r'6cac0892dac0875fbd0539ed5e8d2d30fcd7dada';

@ProviderFor(UsdtFundingCountdown)
const usdtFundingCountdownProvider = UsdtFundingCountdownProvider._();

final class UsdtFundingCountdownProvider
    extends $NotifierProvider<UsdtFundingCountdown, Countdown?> {
  const UsdtFundingCountdownProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usdtFundingCountdownProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usdtFundingCountdownHash();

  @$internal
  @override
  UsdtFundingCountdown create() => UsdtFundingCountdown();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Countdown? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Countdown?>(value),
    );
  }
}

String _$usdtFundingCountdownHash() =>
    r'f7604d0dd7c44266d4f6004816875504763e8b7c';

abstract class _$UsdtFundingCountdown extends $Notifier<Countdown?> {
  Countdown? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Countdown?, Countdown?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Countdown?, Countdown?>,
              Countdown?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
