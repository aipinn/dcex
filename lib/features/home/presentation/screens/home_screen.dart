import 'package:dcex/generated/locale_keys.g.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/features/home/presentation/widgets/favorite_pair.dart';
import 'package:dcex/features/home/presentation/widgets/pair_tile.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logInfo('===> homepage build');
    final pairs = ref.watch(pairsProvider);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        scrolledUnderElevation: 2,
        elevation: 2,
        backgroundColor:
            Colors.cyan.shade100, // Theme.of(context).colorScheme.surface,
        // surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: Text(LocaleKeys.homeTitle.tr()),
        actions: [
          TextButton(
            onPressed: () {
              // Test:
              ref.invalidate(pairsProvider);
            },
            child: Icon(Icons.refresh),
          ),
          Icon(Icons.person),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                FavoritePairWidget(),

                Expanded(
                  child: pairs.when(
                    data: (data) {
                      return ListView.builder(
                        itemCount: data.length,
                        itemExtent: 60,
                        itemBuilder: (BuildContext context, int index) {
                          return PairTitleWidget(
                            key: ValueKey(data[index].pair),
                            pair: data[index],
                          );
                        },
                      );
                    },
                    error: (Object error, StackTrace stackTrace) {
                      return Center(child: Text(error.toString().tr()));
                    },
                    loading: () {
                      return Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
