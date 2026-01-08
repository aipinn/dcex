import 'dart:async';
import 'package:dcex/constants/defaluts_preferences.dart';
import 'package:dcex/features/settings/data/models/settings_section.dart';
import 'package:dcex/features/settings/data/models/settings_detail/settings_detail.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// The items of the settings page
final settingsDataProvider = FutureProvider<List<SettingsSection>>((ref) async {
  final details = await ref.watch(settingsProvider.future);
  var sections = <SettingsSection>[];

  sections = <SettingsSection>[
    SettingsSection(
      title: 'language',
      items: [
        SettingsTileData(
          type: SettingsTileType.language,
          title: "Language",
          subtitle: details.currentLanguage,
          icon: const Icon(Icons.language),
          onTap: () {},
        ),
      ],
    ),

    SettingsSection(
      title: 'Data',
      items: [
        SettingsTileData(
          type: SettingsTileType.exchange,
          title: "Exchange",
          subtitle: details.favoriteExchange,
          icon: const Icon(Icons.color_lens),
          onTap: () {},
        ),
        SettingsTileData(
          type: SettingsTileType.pair,
          title: "Top Pair",
          subtitle: details.favoritePair,
          icon: Icon(Icons.store),
          onTap: () {},
        ),
      ],
    ),

    SettingsSection(
      title: 'Design',
      items: [
        SettingsTileData(
          type: SettingsTileType.theme,
          title: "App theme",
          subtitle: details.themeMode,
          icon: Icon(Icons.piano),
          onTap: () {},
        ),
      ],
    ),
  ];

  return sections;
});

final favoriteExchangeProvider = FutureProvider<String>((ref) async {
  logInfo("setting favorite exchange changed");
  return await ref.watch(
    settingsProvider.selectAsync((s) => s.favoriteExchange),
  );
});

/// Settings provider
final settingsProvider =
    AsyncNotifierProvider<SettingsNotifier, SettingsDetail>(
      SettingsNotifier.new,
    );

final languageProvider = Provider<List<AppLanguage>>((ref) {
  return AppLanguage.values;
});

final themeProvider = Provider<List<AppTheme>>((ref) {
  return AppTheme.values;
});

/// Databse provider: storage user's preferences data
final databaseProvider = Provider<FlutterSecureStorage>((ref) {
  return FlutterSecureStorage();
});

class SettingsNotifier extends AsyncNotifier<SettingsDetail> {
  @override
  FutureOr<SettingsDetail> build() async {
    final storage = ref.read(databaseProvider);
    final results = await Future.wait<String?>([
      storage.read(key: 'language'),
      storage.read(key: 'exchange'),
      storage.read(key: 'pair'),
      storage.read(key: 'theme'),
    ]);
    final language = results[0] ?? DefalutsPreferences.language.name;
    final exchange = results[1] ?? DefalutsPreferences.exchange;
    final pair = results[2] ?? DefalutsPreferences.symbol;
    final theme = results[3] ?? DefalutsPreferences.theme.name;

    return SettingsDetail(
      currentLanguage: language,
      favoriteExchange: exchange,
      favoritePair: pair,
      themeMode: theme,
    );
  }

  /// Change favorite pair
  void setFavoritePair(String pair) async {
    final prev = state.value;
    if (prev == null) return;
    await ref.read(databaseProvider).write(key: 'pair', value: pair);
    state = AsyncValue.data(prev.copyWith(favoritePair: pair));
  }

  /// Change theme
  void setTheme(AppTheme theme) async {
    final prev = state.value;
    if (prev == null) return;
    await ref.read(databaseProvider).write(key: 'theme', value: theme.name);
    state = AsyncValue.data(prev.copyWith(themeMode: theme.name));
  }

  /// Change language
  void setLanguage(AppLanguage language) async {
    final prev = state.value;
    if (prev == null) return;
    await ref
        .read(databaseProvider)
        .write(key: 'language', value: language.name);
    state = AsyncValue.data(prev.copyWith(currentLanguage: language.name));
  }

  /// Chage favorite exchange
  void setFavoriteExchange(String exchange) async {
    final prev = state.value;
    if (prev == null) return;

    // Check and reset.
    //  await verifyFavoritePair(exchange);

    state = AsyncValue.data(prev.copyWith(favoriteExchange: exchange));

    await ref.read(databaseProvider).write(key: 'exchange', value: exchange);

    ref.invalidate(favoriteExchangeProvider);
  }

  /// Verify the selected favorite pair is supported by the selected exchange or not
  Future<void> verifyFavoritePair(String exchange) async {}
}
