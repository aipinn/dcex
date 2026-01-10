import 'package:dcex/features/contracts/presentation/widgets/contract_pinned_trading_pair_header.dart';
import 'package:dcex/features/contracts/presentation/widgets/operation_tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OptionsTradeScreen extends ConsumerWidget {
  const OptionsTradeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
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
            content: 'Options(期权)合约赋予买方在到期日前按约定价格买入或卖出资产的权利，而非义务，最大风险为已支付的权利金。',
          ),
        ),

        // Options content
        SliverFillRemaining(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.bar_chart,
                  size: 80,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.3),
                ),
                const SizedBox(height: 24),
                Text(
                  'Options Trading',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '期权交易功能开发中...\nCall/Put期权、风险对冲策略',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.6),
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '敬请期待',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
