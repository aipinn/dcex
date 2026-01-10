// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'futures_market_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ExchangeContext)
const exchangeContextProvider = ExchangeContextProvider._();

final class ExchangeContextProvider
    extends $NotifierProvider<ExchangeContext, String> {
  const ExchangeContextProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'exchangeContextProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$exchangeContextHash();

  @$internal
  @override
  ExchangeContext create() => ExchangeContext();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$exchangeContextHash() => r'829ac1de7af776c0e41f7d2b33a9907533711c0b';

abstract class _$ExchangeContext extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

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
    extends $NotifierProvider<SelectedInverseContractMarket, ContractMarket> {
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
  Override overrideWithValue(ContractMarket value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContractMarket>(value),
    );
  }
}

String _$selectedInverseContractMarketHash() =>
    r'db43a9086590e00746e3177de0c456c4e6027b74';

/// Selected Coin-Margined Contract

abstract class _$SelectedInverseContractMarket
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

@ProviderFor(UsdtFutureChartExpanded)
const usdtFutureChartExpandedProvider = UsdtFutureChartExpandedProvider._();

final class UsdtFutureChartExpandedProvider
    extends $NotifierProvider<UsdtFutureChartExpanded, dynamic> {
  const UsdtFutureChartExpandedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usdtFutureChartExpandedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usdtFutureChartExpandedHash();

  @$internal
  @override
  UsdtFutureChartExpanded create() => UsdtFutureChartExpanded();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$usdtFutureChartExpandedHash() =>
    r'd563d019a55c9136a0710a65088058903b6c489a';

abstract class _$UsdtFutureChartExpanded extends $Notifier<dynamic> {
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

@ProviderFor(UsdtPositionTabIndex)
const usdtPositionTabIndexProvider = UsdtPositionTabIndexProvider._();

final class UsdtPositionTabIndexProvider
    extends $NotifierProvider<UsdtPositionTabIndex, dynamic> {
  const UsdtPositionTabIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usdtPositionTabIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usdtPositionTabIndexHash();

  @$internal
  @override
  UsdtPositionTabIndex create() => UsdtPositionTabIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$usdtPositionTabIndexHash() =>
    r'3f46fa4f5d6909b909e37a3cb11c573f3d4ba111';

abstract class _$UsdtPositionTabIndex extends $Notifier<dynamic> {
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

@ProviderFor(UsdtLeverageIndex)
const usdtLeverageIndexProvider = UsdtLeverageIndexProvider._();

final class UsdtLeverageIndexProvider
    extends $NotifierProvider<UsdtLeverageIndex, dynamic> {
  const UsdtLeverageIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usdtLeverageIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usdtLeverageIndexHash();

  @$internal
  @override
  UsdtLeverageIndex create() => UsdtLeverageIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$usdtLeverageIndexHash() => r'e7e304cae34440ed2aba5376e3fb786bd8ad0c7a';

abstract class _$UsdtLeverageIndex extends $Notifier<dynamic> {
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

@ProviderFor(UsdtMarginMode)
const usdtMarginModeProvider = UsdtMarginModeProvider._();

final class UsdtMarginModeProvider
    extends $NotifierProvider<UsdtMarginMode, MarginMode> {
  const UsdtMarginModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usdtMarginModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usdtMarginModeHash();

  @$internal
  @override
  UsdtMarginMode create() => UsdtMarginMode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarginMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarginMode>(value),
    );
  }
}

String _$usdtMarginModeHash() => r'899d1c03718d68d027c0198505a362b7319efbeb';

abstract class _$UsdtMarginMode extends $Notifier<MarginMode> {
  MarginMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MarginMode, MarginMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MarginMode, MarginMode>,
              MarginMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(UsdtFutureOrderBook)
const usdtFutureOrderBookProvider = UsdtFutureOrderBookProvider._();

final class UsdtFutureOrderBookProvider
    extends $NotifierProvider<UsdtFutureOrderBook, dynamic> {
  const UsdtFutureOrderBookProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usdtFutureOrderBookProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usdtFutureOrderBookHash();

  @$internal
  @override
  UsdtFutureOrderBook create() => UsdtFutureOrderBook();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$usdtFutureOrderBookHash() =>
    r'a5d96a7977762d989d8781149edd9316b4b19dd0';

abstract class _$UsdtFutureOrderBook extends $Notifier<dynamic> {
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

@ProviderFor(OrderForm)
const orderFormProvider = OrderFormProvider._();

final class OrderFormProvider
    extends $NotifierProvider<OrderForm, OrderFormState> {
  const OrderFormProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderFormProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderFormHash();

  @$internal
  @override
  OrderForm create() => OrderForm();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderFormState>(value),
    );
  }
}

String _$orderFormHash() => r'478625913a56fd141b7e1503c38d90cac426d7b6';

abstract class _$OrderForm extends $Notifier<OrderFormState> {
  OrderFormState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OrderFormState, OrderFormState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderFormState, OrderFormState>,
              OrderFormState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Current Select Limit Price Provider

@ProviderFor(ContactSelectLimitPrice)
const contactSelectLimitPriceProvider = ContactSelectLimitPriceProvider._();

/// Current Select Limit Price Provider
final class ContactSelectLimitPriceProvider
    extends $NotifierProvider<ContactSelectLimitPrice, dynamic> {
  /// Current Select Limit Price Provider
  const ContactSelectLimitPriceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactSelectLimitPriceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactSelectLimitPriceHash();

  @$internal
  @override
  ContactSelectLimitPrice create() => ContactSelectLimitPrice();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$contactSelectLimitPriceHash() =>
    r'a0172a3e40f6b37131db2ec1d3de8010fdca3b39';

/// Current Select Limit Price Provider

abstract class _$ContactSelectLimitPrice extends $Notifier<dynamic> {
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
    r'1e0d9fa2ce1b7148e335923fe6f5c0a325aef54c';

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
