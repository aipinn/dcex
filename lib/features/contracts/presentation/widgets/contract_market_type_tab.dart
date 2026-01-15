import 'package:dcex/core/theme/app_theme.dart';
import 'package:dcex/features/contracts/presentation/providers/order_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MarketTypeTabs extends StatelessWidget {
  final String selectedMarket;
  final List<String> markets;
  final Function(String) onMarketChanged;

  const MarketTypeTabs({
    super.key,
    required this.selectedMarket,
    required this.markets,
    required this.onMarketChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          ...markets.map(
            (market) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () => onMarketChanged(market),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      market,
                      style: TextStyle(
                        color: selectedMarket == market
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 16,
                        fontWeight: selectedMarket == market
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 2,
                      width: 40,
                      color: selectedMarket == market
                          ? Theme.of(context).extension<TradeColors>()!.buy
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
