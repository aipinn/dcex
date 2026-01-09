import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePairWidget extends ConsumerWidget {
  const FavoritePairWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(
      settingsProvider.select((state) {
        final value = state.value;
        return (pair: value?.favoritePair, exchange: value?.favoriteExchange);
      }),
    );

    final favoritePair = favorites.pair;
    final favoriteExchange = favorites.exchange;

    return Text('$favoritePair, $favoriteExchange');
  }
}
