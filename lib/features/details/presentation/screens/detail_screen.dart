import 'package:dcex/constants/utils.dart' as utils;
import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:dcex/features/details/presentation/scope/detail_scope_providers.dart';
import 'package:dcex/shared/presentation/widgets/async_section.dart';
import 'package:dcex/features/details/providers/details_provider.dart';
import 'package:dcex/features/details/providers/pair_detail_ws_provider.dart';
import 'package:dcex/features/details/presentation/widgets/detail_section.dart';
import 'package:dcex/features/details/presentation/widgets/time_bar_selector.dart';
import 'package:dcex/features/details/presentation/widgets/line_widget.dart';
import 'package:dcex/features/details/presentation/widgets/title_price.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interactive_chart/interactive_chart.dart';

enum ChartType { line, ohlc }

class DetailsScreen extends ConsumerStatefulWidget {
  final String symbol;
  const DetailsScreen({super.key, required this.symbol});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends ConsumerState<DetailsScreen>
    with SingleTickerProviderStateMixin {
  ChartType _chartType = ChartType.line;
  final tabTitles = ['OrderBook', 'Trades'];

  late final _tabController = TabController(
    length: tabTitles.length,
    vsync: this,
  );

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Test: for loading
    // ref.invalidate(pairsProvider);

    final pair = ref
        .watch(pairsProvider)
        .value
        ?.firstWhere((item) => item.pair == widget.symbol);
    if (pair == null) return _pairNotFound();

    final pairSummaryAsync = ref.watch(pairDetailWsProvider(widget.symbol));

    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: pairSummaryAsync.when(
        data: (pairSummary) {
          // Page-Level Scope for current pair identity
          return ProviderScope(
            overrides: [
              currentDetailPair.overrideWithValue(pair),
              currentDetailPairSummary.overrideWithValue(pairSummary),
            ],
            child: _detailsBody(),
          );
        },
        error: (Object error, StackTrace stackTrace) {
          return _pairNotFound();
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _detailsBody() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(child: TitlePrice()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Row(
              children: [
                _ChartToggleButton(
                  selected: _chartType == ChartType.line,
                  icon: Icons.trending_up,
                  onTap: () {
                    setState(() {
                      _chartType = ChartType.line;
                    });
                  },
                ),
                const SizedBox(width: 8),
                _ChartToggleButton(
                  selected: _chartType == ChartType.ohlc,
                  icon: Icons.candlestick_chart,
                  onTap: () {
                    setState(() {
                      _chartType = ChartType.ohlc;
                    });
                  },
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 250, child: _buildChart()),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: TimeBarSelectorWidget()),
          SliverPersistentHeader(
            pinned: true,
            delegate: _TabbarHeader(
              tabTitles: tabTitles,
              tabController: _tabController,
            ),
          ),
        ];
      },
      body: DetailsSectionWidget(tabController: _tabController),
    );
  }

  Widget _buildChart() {
    switch (_chartType) {
      case ChartType.line:
        return _lineChart();
      case ChartType.ohlc:
        return _ohlcChart();
    }
  }

  Widget _lineChart() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final pair = ref.watch(currentDetailPair);
        final graph = ref.watch(graphDataProvider(pair));
        return graph.when(
          data: (data) {
            return LineChartWidget(data: utils.getPoints(data));
          },
          error: (Object error, StackTrace stackTrace) {
            return LineChartWidget(error: true);
          },
          loading: () {
            return LineChartWidget(loading: true);
          },
        );
      },
    );
  }

  Widget _ohlcChart() {
    return Consumer(
      builder: (context, ref, _) {
        final pair = ref.watch(currentDetailPair);
        final graph = ref.watch(graphDataProvider(pair));

        List<CandleData> convert(Graph data) {
          final candles = data.pairs.first.points
              .map(
                (e) => CandleData(
                  timestamp: (e.timestamp * 1000).toInt(),
                  open: e.openPrice,
                  close: e.closePrice,
                  volume: e.volume,
                  high: e.highPrice,
                  low: e.lowPrice,
                ),
              )
              .toList();
          return candles;
        }

        return AsyncSection(
          value: graph,
          builder: (data) => InteractiveChart(candles: convert(data)),
        );
      },
    );
  }

  Widget _pairNotFound() {
    return const Center(
      child: Text('Pair not found', style: TextStyle(color: Colors.grey)),
    );
  }
}

class _TabbarHeader extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final List<String> tabTitles;
  const _TabbarHeader({required this.tabController, required this.tabTitles});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: TabBar(
        controller: tabController,
        tabs: [for (final title in tabTitles) Tab(text: title)],
      ),
    );
  }

  @override
  double get maxExtent => 44;

  @override
  double get minExtent => 44;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class _ChartToggleButton extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final VoidCallback onTap;

  const _ChartToggleButton({
    required this.selected,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected
        ? Theme.of(context).colorScheme.onSurface
        : Theme.of(context).colorScheme.onSurfaceVariant;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 22, color: color),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: selected ? 16 : 0,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
