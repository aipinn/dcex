import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsExchangeScreen extends ConsumerWidget {
  const SettingsExchangeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exchanges = ref.watch(exchangesProvider);
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Exchange')),
      body: exchanges.when(
        data: (data) {
          final currentExchange = settings.value?.favoriteExchange;
          return ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(height: 1, thickness: 1),
            itemCount: data.length,
            cacheExtent: 200,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                key: ValueKey(index),
                leading: Text(
                  "$index: ${data[index].symbol}",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  ref
                      .read(settingsProvider.notifier)
                      .setFavoriteExchange(data[index].symbol);
                },
                trailing: currentExchange == data[index].symbol
                    ? Icon(Icons.check_circle_outline)
                    : null,
              );
            },
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
