import 'package:dcex/features/contracts/presentation/widgets/contract_pinned_trading_pair_header.dart';
import 'package:dcex/features/contracts/presentation/widgets/operation_tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SmartMoneyScreen extends ConsumerWidget {
  const SmartMoneyScreen({super.key});

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
            content: '追踪大户持仓和资金流向。',
          ),
        ),
      ],
    );
  }
}
