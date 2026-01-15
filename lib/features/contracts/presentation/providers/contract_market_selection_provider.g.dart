// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_market_selection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Selected U-Margined Contract

@ProviderFor(SelectedLinearContractMarket)
const selectedLinearContractMarketProvider =
    SelectedLinearContractMarketProvider._();

/// Selected U-Margined Contract
final class SelectedLinearContractMarketProvider
    extends $NotifierProvider<SelectedLinearContractMarket, ContractMarket> {
  /// Selected U-Margined Contract
  const SelectedLinearContractMarketProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedLinearContractMarketProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedLinearContractMarketHash();

  @$internal
  @override
  SelectedLinearContractMarket create() => SelectedLinearContractMarket();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContractMarket value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContractMarket>(value),
    );
  }
}

String _$selectedLinearContractMarketHash() =>
    r'645fe00f632de6596b4004c79e48ee9754d9f016';

/// Selected U-Margined Contract

abstract class _$SelectedLinearContractMarket
    extends $Notifier<ContractMarket> {
  ContractMarket build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ContractMarket, ContractMarket>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ContractMarket, ContractMarket>,
              ContractMarket,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Selected Coin-Margined Contract

@ProviderFor(SelectedInverseContractMarket)
const selectedInverseContractMarketProvider =
    SelectedInverseContractMarketProvider._();

/// Selected Coin-Margined Contract
final class SelectedInverseContractMarketProvider
    extends
        $NotifierProvider<
          SelectedInverseContractMarket,
          AsyncValue<ContractMarket>
        > {
  /// Selected Coin-Margined Contract
  const SelectedInverseContractMarketProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedInverseContractMarketProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedInverseContractMarketHash();

  @$internal
  @override
  SelectedInverseContractMarket create() => SelectedInverseContractMarket();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<ContractMarket> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<ContractMarket>>(value),
    );
  }
}

String _$selectedInverseContractMarketHash() =>
    r'8373d2a99d224501a21d2dd10da7055f7dda6596';

/// Selected Coin-Margined Contract

abstract class _$SelectedInverseContractMarket
    extends $Notifier<AsyncValue<ContractMarket>> {
  AsyncValue<ContractMarket> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<ContractMarket>, AsyncValue<ContractMarket>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ContractMarket>,
                AsyncValue<ContractMarket>
              >,
              AsyncValue<ContractMarket>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(FutureMarketType)
const futureMarketTypeProvider = FutureMarketTypeProvider._();

final class FutureMarketTypeProvider
    extends $NotifierProvider<FutureMarketType, dynamic> {
  const FutureMarketTypeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'futureMarketTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$futureMarketTypeHash();

  @$internal
  @override
  FutureMarketType create() => FutureMarketType();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$futureMarketTypeHash() => r'dedcd89b7a053ba8062ee1d107b8de8098db3d0e';

abstract class _$FutureMarketType extends $Notifier<dynamic> {
  dynamic build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<dynamic, dynamic>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<dynamic, dynamic>,
              dynamic,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
