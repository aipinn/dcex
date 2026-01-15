// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_market_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// U-Margined Contract

@ProviderFor(linearContractMarkets)
const linearContractMarketsProvider = LinearContractMarketsProvider._();

/// U-Margined Contract

final class LinearContractMarketsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ContractMarket>>,
          List<ContractMarket>,
          FutureOr<List<ContractMarket>>
        >
    with
        $FutureModifier<List<ContractMarket>>,
        $FutureProvider<List<ContractMarket>> {
  /// U-Margined Contract
  const LinearContractMarketsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'linearContractMarketsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$linearContractMarketsHash();

  @$internal
  @override
  $FutureProviderElement<List<ContractMarket>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ContractMarket>> create(Ref ref) {
    return linearContractMarkets(ref);
  }
}

String _$linearContractMarketsHash() =>
    r'3b52c093c6979332ce86a2ebce02124dddd83409';

/// Coin-Margined Contract

@ProviderFor(inverseContractMarkets)
const inverseContractMarketsProvider = InverseContractMarketsProvider._();

/// Coin-Margined Contract

final class InverseContractMarketsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ContractMarket>>,
          List<ContractMarket>,
          FutureOr<List<ContractMarket>>
        >
    with
        $FutureModifier<List<ContractMarket>>,
        $FutureProvider<List<ContractMarket>> {
  /// Coin-Margined Contract
  const InverseContractMarketsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inverseContractMarketsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inverseContractMarketsHash();

  @$internal
  @override
  $FutureProviderElement<List<ContractMarket>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ContractMarket>> create(Ref ref) {
    return inverseContractMarkets(ref);
  }
}

String _$inverseContractMarketsHash() =>
    r'd6164ec622154741070ec15f63e01a756cb29bc9';
