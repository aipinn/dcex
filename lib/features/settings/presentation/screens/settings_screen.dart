import 'package:dcex/features/settings/data/models/settings_section.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:dcex/features/settings/presentation/widgets/settings_tile.dart';
import 'package:dcex/routes/router.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(settingsDataProvider);
    // final exchange = ref.watch(exchangesProvider);
    // final pairs = ref.watch(pairsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: sections.when(
        data: (List<SettingsSection> data) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              for (final section in data) ...[
                Text(section.title),
                Card(
                  clipBehavior: Clip.antiAlias,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: Column(
                    children: [
                      for (int i = 0; i < section.items.length; i++) ...[
                        ProviderScope(
                          overrides: [
                            currentProvider.overrideWithValue(section.items[i]),
                          ],
                          child: SettingTile(
                            showBottomLine: i != section.items.length - 1,
                            onTap: () =>
                                handleAction(context, section.items[i].type),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ],
          );
        },
        error: (Object error, StackTrace stackTrace) {
          return const Text("error");
        },
        loading: () {
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  /// Handle action based on the type of settings tile
  void handleAction(BuildContext context, SettingsTileType type) {
    logInfo('type: $type');
    switch (type) {
      case SettingsTileType.language:
        SettingsLanuageRouter().push(context);
      case SettingsTileType.exchange:
        SettingsExchangeRouter().push(context);
      case SettingsTileType.pair:
        SettingsPairRouter().push(context);
      case SettingsTileType.theme:
        SettingsThemeRouter().push(context);
    }
  }
}
