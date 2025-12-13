import 'package:dcex/generated/locale_keys.g.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderBookSection extends ConsumerWidget {
  final OrderBook orderBookData;
  const OrderBookSection({super.key, required this.orderBookData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bidLen =
        (orderBookData.bids.last.price - orderBookData.bids.first.price).abs();
    final askLen =
        (orderBookData.asks.last.price - orderBookData.asks.first.price).abs();
    return Column(
      children: [
        // Titles
        SizedBox(
          height: 40,
          child: Row(
            children: [
              Expanded(
                child: ColoredBox(
                  color: Colors.greenAccent,
                  child: Center(
                    child: _OrderBookTitleItem(title: LocaleKeys.bid.tr()),
                  ),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Colors.redAccent,
                  child: Center(
                    child: _OrderBookTitleItem(title: LocaleKeys.ask.tr()),
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Row(
            children: [
              // Bids
              Expanded(
                child: ListView.builder(
                  primary: false,
                  itemExtent: 22,
                  itemCount: orderBookData.bids.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = orderBookData.bids[index];
                    return _OrderBookDetailItem(
                      left: item.amount,
                      right: item.price,
                      color: Colors.green,
                      length:
                          (item.price - orderBookData.bids.first.price).abs() /
                          bidLen,
                      align: OrderDepthAlign.end,
                    );
                  },
                ),
              ),

              const SizedBox(width: 0),

              // Asks
              Expanded(
                child: ListView.builder(
                  primary: false,
                  itemExtent: 22,
                  itemCount: orderBookData.asks.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = orderBookData.asks[index];
                    return _OrderBookDetailItem(
                      left: item.price,
                      right: item.amount,
                      color: Colors.red,
                      length:
                          (item.price - orderBookData.asks.first.price).abs() /
                          askLen,
                      align: OrderDepthAlign.start,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

enum OrderDepthAlign { start, end }

class _OrderBookDetailItem extends StatelessWidget {
  final double left;
  final double right;
  final Color color;
  final double length;
  final OrderDepthAlign align;

  const _OrderBookDetailItem({
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
                align == OrderDepthAlign.end
                    ? "${(left / 1e3).toStringAsFixed(2)}k"
                    : left.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: align == OrderDepthAlign.end ? Colors.black : color,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                align == OrderDepthAlign.start
                    ? "${(right / 1e3).toStringAsFixed(2)}k"
                    : right.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: align == OrderDepthAlign.start ? Colors.black : color,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _OrderBookTitleItem extends StatelessWidget {
  final String title;

  const _OrderBookTitleItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
