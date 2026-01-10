import 'package:dcex/features/contracts/presentation/providers/futures_market_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChartExpandableWidget extends ConsumerStatefulWidget {
  const ChartExpandableWidget({super.key});

  @override
  ConsumerState<ChartExpandableWidget> createState() =>
      _ChartExpandableWidgetState();
}

class _ChartExpandableWidgetState extends ConsumerState<ChartExpandableWidget>
    with SingleTickerProviderStateMixin {
  static const double _headerHeight = 44.0;
  static const double _contentHeight = 200.0;
  static const double _expandedHeight = _contentHeight + _headerHeight;

  void _toggleExpansion() {
    ref.read(usdtFutureChartExpandedProvider.notifier).toggle();
  }

  @override
  Widget build(BuildContext context) {
    final symbol = ref.watch(currentInverseEntityProvider).symbol;
    final isExpanded = ref.watch(usdtFutureChartExpandedProvider);
    const duaration = Duration(milliseconds: 300);
    return ClipRect(
      child: AnimatedSize(
        duration: duaration,
        curve: Curves.easeInOut,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            _buildTitleBar(symbol, isExpanded),

            // 不要瞬间 0 / 200
            AnimatedContainer(
              duration: duaration,
              curve: Curves.easeInOut,
              height: isExpanded ? _contentHeight : 0,
              child: ClipRect(child: _buildChartContent()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleBar(String symbol, bool isExpanded) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: Container(
        height: _headerHeight,
        color: Theme.of(context).colorScheme.surface,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(
              '$symbol Chart',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            // Expand / Collapse arrow
            AnimatedRotation(
              turns: isExpanded ? 0.5 : 0,
              duration: const Duration(milliseconds: 300),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).colorScheme.onSurface,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChartContent() {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // Chart area (placeholder)
          Expanded(
            child: Stack(
              children: [
                // Placeholder for actual chart
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.candlestick_chart,
                        size: 64,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'K-Line)',
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                          fontSize: 14,
                        ),
                      ),
                    ],
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
