// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_form_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
