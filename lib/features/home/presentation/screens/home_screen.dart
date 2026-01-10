import 'dart:async';
import 'package:dcex/features/home/presentation/controllers/home_ws_subscription_controller.dart';
import 'package:dcex/features/home/presentation/providers/home_ux_provider.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/features/home/presentation/widgets/favorite_pair.dart';
import 'package:dcex/features/home/presentation/widgets/pair_tile.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _homeTileHeight = 60.0;

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairs = ref.watch(pairsProvider);
    final scrollController = useScrollController();
    final subscriptionController = HomeWsSubscriptionController(ref);
    useEffect(() {
      logInfo('home use effect 1');
      final subscription = ref.listenManual(homeReadyProvider, (
        previous,
        next,
      ) {
        if (next is AsyncData) {
          subscriptionController.updateVisibleSymbols(
            scrollController,
            _homeTileHeight,
          );
        }
      });
      return () => subscription.close();
    }, const []);

    useEffect(() {
      logInfo('home use effect 2');
      Timer? debounceTimer;

      void onScroll() {
        debounceTimer?.cancel();
        debounceTimer = Timer(const Duration(milliseconds: 300), () {
          subscriptionController.updateVisibleSymbols(
            scrollController,
            _homeTileHeight,
          );
        });
      }

      scrollController.addListener(onScroll);
      // Cleanup
      return () {
        debounceTimer?.cancel();
        scrollController.removeListener(onScroll);
      };
    }, const []);

    logInfo('===> homepage build');
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        scrolledUnderElevation: 2,
        elevation: 2,
        centerTitle: true,
        title: FavoritePairWidget(),
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
                Expanded(
                  child: pairs.when(
                    data: (data) {
                      logInfo('home list build');
                      return ListView.builder(
                        controller: scrollController,
                        itemCount: data.length,
                        itemExtent: _homeTileHeight,
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
