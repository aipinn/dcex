import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsThemeScreen extends ConsumerWidget {
  const SettingsThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themes = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Theme')),
      body: ListView.separated(
        itemCount: themes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              themes[index].name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 1, thickness: 1),
      ),
    );
  }
}
