import 'dart:math';
import 'package:dcex/core/theme/app_theme.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_runtime_provider.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_ui_state_provider.dart';
import 'package:dcex/features/contracts/presentation/providers/order_form_provider.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_ws_provider.dart';
import 'package:dcex/features/details/presentation/widgets/order_book_tile.dart';
import 'package:dcex/shared/presentation/widgets/async_section.dart';
import 'package:dcex/shared/presentation/widgets/dash_line.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderBookWidget extends ConsumerWidget {
  const OrderBookWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticker = ref.watch(currentInverseOrderBookUIProvider);
    if (ticker == null) return const SizedBox.shrink();

    logInfo(
      '🖐️ 🖐️ 🖐️ ${(ticker.fundingRate)} next: ${ticker.getNextFundingTime}',
    );
    final trade = Theme.of(context).extension<TradeColors>()!;
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
      child: Column(
        children: [
          // Funding Rate + Countdown + Available Balance
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Funding (8h) / Countdown',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 11,
                      ),
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: DashedLine(height: 1, dashSpace: 3, dashWidth: 3),
                    ),

                    Row(
                      children: [
                        Text(
                          '${(ticker.getFundingRate * 100).toStringAsFixed(4)}%',
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ' / ',
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 12,
                          ),
                        ),
                        // Countdown
                        Consumer(
                          builder:
                              (
                                BuildContext context,
                                WidgetRef ref,
                                Widget? child,
                              ) {
                                final countdown = ref.watch(
                                  usdtFundingCountdownProvider,
                                );
                                return Text(
                                  countdown == null
                                      ? '--'
                                      : '${countdown.hh}:${countdown.mm}:${countdown.ss}',
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                    fontSize: 12,
                                  ),
                                );
                              },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Price headers
          Row(
            children: [
              Expanded(
                child: Text(
                  'Price\n(USDT)',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 11,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Amount\n(Count)',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Asks (Sell orders) - Red
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final orderbook = ref.watch(
                futureOrderbookWsProvider(ticker.symbol),
              );
              return AsyncSection(
                value: orderbook,
                builder: (data) {
                  return Column(
                    children: [
                      ...data.asks.reversed
                          .take(7)
                          .map(
                            (ask) => GestureDetector(
                              onTap: () => _updatePrice(ref, ask.price),
                              child: OrderBookTile(
                                left: ask.price,
                                right: ask.amount,
                                color: trade.sell,
                                length: Random().nextDouble(),
                                align: OrderDepthAlign.end,
                              ),
                            ),
                          ),
                    ],
                  );
                },
              );
            },
          ),

          const SizedBox(height: 6),
          // Current Price
          GestureDetector(
            onTap: () => _updatePrice(ref, ticker.last),
            child: Row(
              children: [
                Text(
                  ticker.last.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: ticker.change >= 0 ? trade.buy : trade.sell,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  ticker.change >= 0
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  color: ticker.change >= 0 ? trade.buy : trade.sell,
                  size: 28,
                ),
              ],
            ),
          ),

          // Price info
          Text(
            ticker.last.toString(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 11,
            ),
          ),
          DashedLine(dashWidth: 3, dashSpace: 3, height: 1),

          const SizedBox(height: 12),

          // Bids (Buy orders) - Green
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final orderbook = ref.watch(
                futureOrderbookWsProvider(ticker.symbol),
              );
              return AsyncSection(
                value: orderbook,
                builder: (data) {
                  return Column(
                    children: [
                      ...data.bids
                          .take(7)
                          .map(
                            (bid) => GestureDetector(
                              onTap: () => _updatePrice(ref, bid.price),
                              child: OrderBookTile(
                                left: bid.price,
                                right: bid.amount,
                                color: trade.buy,
                                length: Random().nextDouble(),
                                align: OrderDepthAlign.end,
                              ),
                            ),
                          ),
                    ],
                  );
                },
              );
            },
          ),

          const SizedBox(height: 12),
          // Long/Short ratio bar
          Row(
            children: [
              Expanded(
                flex: 53,
                child: Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: trade.buy,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 47,
                child: Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: trade.sell,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('53.48%', style: TextStyle(color: trade.buy, fontSize: 11)),
              Text('46.52%', style: TextStyle(color: trade.sell, fontSize: 11)),
            ],
          ),
        ],
      ),
    );
  }

  void _updatePrice(WidgetRef ref, double price) {
    HapticFeedback.selectionClick();
    ref.read(contactSelectLimitPriceProvider.notifier).update(price);
    logInfo('update price: $price');
  }
}
