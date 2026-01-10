import 'package:dcex/core/theme/app_theme.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_market_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PositionsOrdersBotsTab extends ConsumerWidget {
  const PositionsOrdersBotsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(usdtPositionTabIndexProvider);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                _buildTab(context, 'Positions', 0, selectedIndex, ref),
                const SizedBox(width: 24),
                _buildTab(
                  context,
                  'Open Orders',
                  0,
                  selectedIndex,
                  ref,
                  index: 1,
                ),
                const SizedBox(width: 24),
                _buildTab(context, 'Bots', null, selectedIndex, ref, index: 2),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Tab content
          Container(
            height: 200,
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.article_outlined,
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    size: 48,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'No positions',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(
    BuildContext context,
    String label,
    int? count,
    int selectedIndex,
    WidgetRef ref, {
    int index = 0,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        ref.read(usdtPositionTabIndexProvider.notifier).change(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).colorScheme.onSurface
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
              if (count != null) ...[
                const SizedBox(width: 4),
                Text(
                  '($count)',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 13,
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Container(
            height: 2,
            width: 40,
            color: isSelected
                ? Theme.of(context).extension<TradeColors>()!.buy
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
