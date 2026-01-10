import 'package:dcex/core/theme/app_theme_provider.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsThemeScreen extends ConsumerWidget {
  const SettingsThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themes = ref.watch(themeProvider);
    final theme = ref.watch(themeProviderProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Theme')),
      body: ListView.separated(
        itemCount: themes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              themes[index].name,
              style: const TextStyle(fontSize: 16),
            ),
            trailing: _selectIndex(theme) == index
                ? Icon(Icons.check_circle_outline)
                : null,
            onTap: () {
              ThemeMode mode = ThemeMode.system;
              if (index == 1) {
                mode = ThemeMode.light;
              } else if (index == 2) {
                mode = ThemeMode.dark;
              } else {
                mode = ThemeMode.system;
              }
              ref.read(themeProviderProvider.notifier).change(mode);
            },
          );
        },
        separatorBuilder: (_, __) =>
            Container(color: Theme.of(context).colorScheme.outline, height: 1),
      ),
    );
  }

  int _selectIndex(ThemeMode mode) {
    if (mode == ThemeMode.system) {
      return 0;
    } else if (mode == ThemeMode.light) {
      return 1;
    } else if (mode == ThemeMode.dark) {
      return 2;
    }
    return 0;
  }
}
