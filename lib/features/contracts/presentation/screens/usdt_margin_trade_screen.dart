import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dcex/features/contracts/presentation/widgets/chart_expandable_widget.dart';
import 'package:dcex/features/contracts/presentation/widgets/contract_pinned_trading_pair_header.dart';
import 'package:dcex/features/contracts/presentation/widgets/order_book_widget.dart';
import 'package:dcex/features/contracts/presentation/widgets/order_placement_panel.dart';
import 'package:dcex/features/contracts/presentation/widgets/positions_orders_bots_tab.dart';

class UsdtMarginTradeScreen extends ConsumerWidget {
  const UsdtMarginTradeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            // 注入外层header的重叠量
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),

            // Pinned Trading Pair Header（滑动后固定在顶部）
            const PinnedTradingPairHeader(),

            // OrderBook + OrderPlacement
            SliverToBoxAdapter(
              child: SizedBox(
                height: 600,
                child: Row(
                  children: const [
                    Expanded(flex: 4, child: OrderBookWidget()),
                    Expanded(flex: 6, child: OrderPlacementPanel()),
                  ],
                ),
              ),
            ),

            // Positions/Orders/Bots Tab
            const SliverToBoxAdapter(child: PositionsOrdersBotsTab()),

            // Bottom spacing for chart
            const SliverToBoxAdapter(child: SizedBox(height: 480)),
          ],
        ),

        // Chart at bottom
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: ChartExpandableWidget(),
        ),
      ],
    );
  }
}
