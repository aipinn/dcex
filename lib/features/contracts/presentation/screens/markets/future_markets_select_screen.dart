import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_market_provider.dart';
import 'package:dcex/shared/presentation/widgets/async_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureMarketsSelectScreen extends ConsumerWidget {
  const FutureMarketsSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketsAsync = ref.watch(inverseContractMarketsProvider);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        children: [
          // 顶部拖拽条
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          const Text(
            'Select Contract',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          Expanded(
            child: AsyncSection(
              value: marketsAsync,
              builder: (list) {
                return ListView.separated(
                  itemCount: list.length,
                  separatorBuilder: (_, __) => Divider(
                    height: 1,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  itemBuilder: (context, index) {
                    final market = list[index];
                    return ListTile(
                      visualDensity: const VisualDensity(vertical: -4),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 2,
                      ),
                      title: Text(market.pair),
                      trailing: const Icon(Icons.star_border),
                      subtitle: Text(market.contractType ?? ""),
                      onTap: () {
                        ref
                            .read(
                              selectedInverseContractMarketProvider.notifier,
                            )
                            .setMarket(market);
                        Navigator.of(context).pop(market);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
