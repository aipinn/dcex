import 'package:dcex/features/contracts/presentation/providers/futures_runtime_provider.dart';
import 'package:dcex/features/contracts/presentation/screens/markets/future_markets_select_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PinnedTradingPairHeader extends ConsumerWidget {
  const PinnedTradingPairHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TradingPairHeaderDelegate(ref: ref),
    );
  }
}

class _TradingPairHeaderDelegate extends SliverPersistentHeaderDelegate {
  final WidgetRef ref;

  _TradingPairHeaderDelegate({required this.ref});

  @override
  double get minExtent => 44;

  @override
  double get maxExtent => 44;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final symbol = ref.watch(currentInverseSymbolProvider);
    if (symbol == null) return const SizedBox.shrink();

    return Container(
      height: minExtent,
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Row(
        children: [
          GestureDetector(
            child: _TradingPairSelector(symbol: symbol),
            onTap: () => _showMarketPicker(context),
          ),

          // Icons
          const Spacer(),
          _HeaderIcon(icon: Icons.card_giftcard_outlined, onTap: () {}),
          _HeaderIcon(icon: Icons.calculate_outlined, onTap: () {}),
          _HeaderIcon(icon: Icons.compare_arrows, onTap: () {}),
          _HeaderIcon(icon: Icons.more_horiz, onTap: () {}),
        ],
      ),
    );
  }

  void _showMarketPicker(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: FutureMarketsSelectScreen(),
        );
      },
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class _TradingPairSelector extends StatelessWidget {
  const _TradingPairSelector({required this.symbol});

  final String symbol;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          symbol,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Theme.of(
              context,
            ).colorScheme.onSurfaceVariant.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            'Perp',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Icon(
          Icons.keyboard_arrow_down,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          size: 20,
        ),
      ],
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? color;

  const _HeaderIcon({required this.icon, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Icon(
          icon,
          size: 20,
          color: color ?? Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
