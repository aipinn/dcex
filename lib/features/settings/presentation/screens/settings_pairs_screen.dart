import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPairsScreen extends ConsumerWidget {
  const SettingsPairsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairs = ref.watch(pairsProvider);
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Pair')),
      body: pairs.when(
        data: (data) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final currentPair = settings.value?.favoritePair;
              return ListTile(
                leading: Text(
                  "$index: ${data[index].pair}",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: currentPair == data[index].pair
                    ? Icon(Icons.check_circle_outline)
                    : null,
                onTap: () {
                  ref
                      .read(settingsProvider.notifier)
                      .setFavoritePair(data[index].pair);
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: 1, thickness: 1);
            },
            itemCount: data.length,
            cacheExtent: 200,
          );
        },
        error: (Object error, StackTrace stackTrace) {
          return Center(child: Text(error.toString()));
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
