// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_cotext_provider.dart';

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
