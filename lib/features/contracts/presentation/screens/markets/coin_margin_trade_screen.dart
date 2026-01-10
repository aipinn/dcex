import 'package:dcex/constants/app_constants.dart';
import 'package:dcex/features/contracts/presentation/widgets/chart_expandable_widget.dart';
import 'package:dcex/features/contracts/presentation/widgets/contract_pinned_trading_pair_header.dart';
import 'package:dcex/features/contracts/presentation/widgets/operation_tips.dart';
import 'package:dcex/features/contracts/presentation/widgets/order_book_widget.dart';
import 'package:dcex/features/contracts/presentation/widgets/order_placement_panel.dart';
import 'package:dcex/features/contracts/presentation/widgets/positions_orders_bots_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Or Inverse
class CoinMarginTradeScreen extends ConsumerWidget {
  const CoinMarginTradeScreen({super.key});

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

            // Pinned Header
            const PinnedTradingPairHeader(),

            // Info banner
            SliverToBoxAdapter(
              child: OperationTips(
                icon: Icons.info_outline,
                content: 'Coin-Margined（Inverse）合约使用加密货币作为保证金，盈亏与结算均以标的币种计价',
              ),
            ),

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

            // Positions Tab
            const SliverToBoxAdapter(child: PositionsOrdersBotsTab()),

            // Bottom spacing
            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),

        // Chart at bottom
        Positioned(
          left: 0,
          right: 0,
          bottom: AppConstants.mainTabbarHeight,
          child: ChartExpandableWidget(),
        ),
      ],
    );
  }
}
