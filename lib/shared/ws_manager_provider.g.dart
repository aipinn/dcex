// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_manager_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wsOrderbookManager)
const wsOrderbookManagerProvider = WsOrderbookManagerProvider._();

final class WsOrderbookManagerProvider
    extends
        $FunctionalProvider<
          AsyncValue<WsOrderbookManager>,
          WsOrderbookManager,
          FutureOr<WsOrderbookManager>
        >
    with
        $FutureModifier<WsOrderbookManager>,
        $FutureProvider<WsOrderbookManager> {
  const WsOrderbookManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wsOrderbookManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wsOrderbookManagerHash();

  @$internal
  @override
  $FutureProviderElement<WsOrderbookManager> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<WsOrderbookManager> create(Ref ref) {
    return wsOrderbookManager(ref);
  }
}

String _$wsOrderbookManagerHash() =>
    r'3a6a3f50cfb4520907dc8ec6314067579963955d';
