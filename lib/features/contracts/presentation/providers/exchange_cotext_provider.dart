import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exchange_cotext_provider.g.dart';

@riverpod
class ExchangeContext extends _$ExchangeContext {
  @override
  String build() {
    final settings = ref.watch(settingsProvider);

    return settings.when(
      data: (s) => s.favoriteExchange,
      loading: () =>
          throw const AsyncError('exchange loading', StackTrace.empty),
      error: (e, _) => throw e,
    );
  }
}
