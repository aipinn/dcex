import 'package:dcex/constants/utils.dart' as utils;
import 'package:dcex/core/theme/app_theme.dart';
import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/details/providers/details_provider.dart';
import 'package:dcex/features/home/presentation/providers/home_pair_ws_provider.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/routes/router.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/presentation/widgets/async_section.dart';
import 'package:dcex/features/details/presentation/widgets/line_widget.dart';
import 'package:dcex/shared/ws_manager_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPairProvider = Provider<Pair>((ref) {
  throw UnimplementedError();
});

class PairTitleWidget extends ConsumerWidget {
  final Pair pair;
  const PairTitleWidget({super.key, required this.pair});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [currentPairProvider.overrideWithValue(pair)],
      child: _buildTile(context),
    );
  }

  Widget _buildTile(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: EdgeInsets.symmetric(vertical: 0.5),
      child: GestureDetector(
        onTap: () {
          _pushToDetailPage(context);
        },
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Non-reactive: does not depend on providers
              _buildSymbol(context),

              Spacer(),
              // Reactive: depends on summary & graph
              SizedBox(
                width: 60,
                height: 30,
                child: Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                        final summary = ref.watch(pairSummaryProvider(pair));
                        final graph = ref.watch(graphDataProvider(pair));
                        if (summary.isLoading || graph.isLoading) {
                          return SizedBox(
                            height: 60,
                            child: const LineChartWidget(loading: true),
                          );
                        }

                        if (summary.hasError || graph.hasError) {
                          return SizedBox(
                            height: 60,
                            child: const LineChartWidget(error: true),
                          );
                        }

                        return _buildLineChart(
                          context,
                          graph.value!,
                          summary.value!,
                        );
                      },
                ),
              ),
              SizedBox(width: 8),
              // Reactive: depends on summary only
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final summary = ref.watch(pairSummaryProvider(pair));
                  final summary1 = ref.watch(pairSummaryWsProvider(pair.pair));
                  return AsyncSection(
                    value: summary,
                    builder: (TickerEntity data) {
                      // logInfo('build 🍤： ${data.price.last}');
                      return _buildPrice(data, context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPrice(TickerEntity summary, BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              summary.last.toStringAsFixed(3),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),

            Text(
              summary.change.toStringAsFixed(2),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        SizedBox(width: 8),
        // Percent
        Container(
          decoration: BoxDecoration(
            color: summary.change < 0
                ? Theme.of(context).extension<TradeColors>()!.sell
                : Theme.of(context).extension<TradeColors>()!.buy,
            borderRadius: BorderRadius.circular(6),
          ),
          alignment: Alignment.center,
          width: 80,
          height: 32,
          child: Text(
            "${summary.percentage.toStringAsFixed(2)} %",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLineChart(
    BuildContext context,
    Graph graph,
    TickerEntity summary,
  ) {
    return LineChartWidget(
      data: utils.getPoints(graph),
      color: summary.change < 0
          ? Theme.of(context).extension<TradeColors>()!.sell
          : Theme.of(context).extension<TradeColors>()!.buy,
      loading: false,
      error: false,
    );
  }

  Widget _buildSymbol(BuildContext context) {
    final pairText = pair.pair;
    final slashIndex = pairText.indexOf('/');
    final firstPart = slashIndex != -1
        ? pairText.substring(0, slashIndex)
        : pairText;
    final secondPart = slashIndex != -1 ? pairText.substring(slashIndex) : '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: firstPart,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              TextSpan(
                text: secondPart,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _pushToDetailPage(BuildContext context) {
    PairDetailRouter(symbol: pair.pair).push(context);
  }
}
