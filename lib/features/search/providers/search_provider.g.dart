// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PairSearchText)
const pairSearchTextProvider = PairSearchTextProvider._();

final class PairSearchTextProvider
    extends $NotifierProvider<PairSearchText, String> {
  const PairSearchTextProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pairSearchTextProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pairSearchTextHash();

  @$internal
  @override
  PairSearchText create() => PairSearchText();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$pairSearchTextHash() => r'74b496f2d74f2defa8d13f8d8c683bfd518fcafa';

abstract class _$PairSearchText extends $Notifier<String> {
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

@ProviderFor(pairsSeach)
const pairsSeachProvider = PairsSeachProvider._();

final class PairsSeachProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Pair>>,
          List<Pair>,
          FutureOr<List<Pair>>
        >
    with $FutureModifier<List<Pair>>, $FutureProvider<List<Pair>> {
  const PairsSeachProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pairsSeachProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pairsSeachHash();

  @$internal
  @override
  $FutureProviderElement<List<Pair>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Pair>> create(Ref ref) {
    return pairsSeach(ref);
  }
}

String _$pairsSeachHash() => r'63bbea71ce2ae13ca42f15943e2cf5130465a7b5';
