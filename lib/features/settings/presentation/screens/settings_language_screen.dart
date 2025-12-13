import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsLanguageScreen extends ConsumerWidget {
  const SettingsLanguageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languages = ref.watch(languageProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Language')),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(
              languages[index].name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 1, thickness: 1);
        },
        itemCount: languages.length,
      ),
    );
  }
}
