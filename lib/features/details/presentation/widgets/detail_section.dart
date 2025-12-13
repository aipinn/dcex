import 'package:dcex/features/details/presentation/scope/detail_scope_providers.dart';
import 'package:dcex/features/details/providers/details_provider.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/features/home/providers/home_provider.dart';
import 'package:dcex/features/details/presentation/widgets/async_section.dart';
import 'package:dcex/features/details/presentation/widgets/olhc_section.dart';
import 'package:dcex/features/details/presentation/widgets/order_book_section.dart';
import 'package:dcex/features/details/presentation/widgets/summary_section.dart';
import 'package:dcex/features/details/presentation/widgets/trades_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsSectionWidget extends ConsumerStatefulWidget {
  final TabController tabController;
  const DetailsSectionWidget({super.key, required this.tabController});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DetailsSectionWidgetState();
}

class _DetailsSectionWidgetState extends ConsumerState<DetailsSectionWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [_OrderBookTab(), _TradesTab()],
    );
  }
}

class _SummaryTab extends ConsumerStatefulWidget {
  const _SummaryTab();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __SummaryTabState();
}

class __SummaryTabState extends ConsumerState<_SummaryTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final pair = ref.watch(currentDetailPair);
    final summary = ref.watch(pairSummaryProvider(pair));

    return AsyncSection<PairSummary>(
      value: summary,
      builder: (data) => SummarySection(summaryData: data),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _OrderBookTab extends ConsumerStatefulWidget {
  const _OrderBookTab();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __OrderBookTabState();
}

class __OrderBookTabState extends ConsumerState<_OrderBookTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final pair = ref.watch(currentDetailPair);
    final orderBook = ref.watch(pairOrderBookProvider(pair));

    return AsyncSection(
      value: orderBook,
      builder: (data) => OrderBookSection(orderBookData: data),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _TradesTab extends ConsumerStatefulWidget {
  const _TradesTab();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __TradesTabState();
}

class __TradesTabState extends ConsumerState<_TradesTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final pair = ref.watch(currentDetailPair);
    final trades = ref.watch(tradesListProvider(pair));

    return AsyncSection(
      value: trades,
      builder: (data) => TradesSection(tradesData: data),
    );

    // return AsyncSection(
    //   value: trades,
    //   builder: (data) => CustomScrollView(
    //     slivers: [
    //       SliverFillRemaining(
    //         hasScrollBody: true,
    //         child: TradesSection(tradesData: data),
    //       ),
    //     ],
    //   ),
    // );
  }

  @override
  bool get wantKeepAlive => true;
}

class _OlhcTab extends ConsumerStatefulWidget {
  const _OlhcTab();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __OlhcTabState();
}

class __OlhcTabState extends ConsumerState<_OlhcTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final pair = ref.watch(currentDetailPair);
    final graph = ref.watch(graphDataProvider(pair));

    return AsyncSection(
      value: graph,
      builder: (data) => CustomScrollView(
        slivers: [
          // Fixed height
          SliverToBoxAdapter(child: OlhcSection(height: 500, graphData: data)),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
