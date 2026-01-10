import 'package:dcex/core/theme/app_theme.dart';
import 'package:dcex/features/details/presentation/widgets/order_book_tile.dart';
import 'package:dcex/generated/locale_keys.g.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
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
                  color: Theme.of(
                    context,
                  ).extension<TradeColors>()!.buy.withValues(alpha: 0.6),
                  child: Center(
                    child: _OrderBookTitleItem(title: LocaleKeys.bid.tr()),
                  ),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Theme.of(
                    context,
                  ).extension<TradeColors>()!.sell.withValues(alpha: 0.6),
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
                    return OrderBookTile(
                      left: item.amount,
                      right: item.price,
                      color: Theme.of(context).extension<TradeColors>()!.buy,
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
                    return OrderBookTile(
                      left: item.price,
                      right: item.amount,
                      color: Theme.of(context).extension<TradeColors>()!.sell,
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
