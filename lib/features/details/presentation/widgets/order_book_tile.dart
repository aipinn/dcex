import 'package:dcex/shared/utils/number_format.dart';
import 'package:flutter/material.dart';

enum OrderDepthAlign { start, end }

class OrderBookTile extends StatelessWidget {
  final double left;
  final double right;
  final Color color;
  final double length;
  final OrderDepthAlign align;

  const OrderBookTile({
    super.key,
    required this.left,
    required this.right,
    required this.color,
    required this.length,
    required this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: align == OrderDepthAlign.start
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: AnimatedFractionallySizedBox(
              duration: const Duration(milliseconds: 300),
              widthFactor: length.clamp(0.05, 1.0),
              alignment: align == OrderDepthAlign.start
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: SizedBox.expand(
                child: ColoredBox(color: color.withValues(alpha: 0.1)),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                formatMarketNumber(left),
                style: TextStyle(
                  fontSize: 16,
                  color: align == OrderDepthAlign.end
                      ? Theme.of(context).colorScheme.onSurface
                      : color,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                formatMarketNumber(right),
                style: TextStyle(
                  fontSize: 16,
                  color: align == OrderDepthAlign.start
                      ? Theme.of(context).colorScheme.onSurface
                      : color,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
