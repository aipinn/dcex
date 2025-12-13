import 'package:dcex/generated/locale_keys.g.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/features/home/data/models/pair/price/price.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SummarySection extends ConsumerWidget {
  final PairSummary summaryData;
  const SummarySection({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // =====Price======
            _PriceTitleItem(title: LocaleKeys.price.tr()),
            SizedBox(height: 5),
            _PriceDetailItem(
              title: LocaleKeys.last.tr(),
              value: summaryData.price.last.toString(),
            ),
            SizedBox(height: 5),
            _PriceDetailItem(
              title: LocaleKeys.high.tr(),
              value: summaryData.price.high.toString(),
            ),
            SizedBox(height: 5),
            _PriceDetailItem(
              title: LocaleKeys.low.tr(),
              value: summaryData.price.low.toString(),
            ),
            SizedBox(height: 5),
            _PriceDetailItem(
              title: LocaleKeys.change.tr(),
              value: summaryData.price.change.absolute.toString(),
            ),

            // =====Volume======
            _PriceTitleItem(title: LocaleKeys.volume.tr()),
            SizedBox(height: 5),
            _PriceDetailItem(
              title: LocaleKeys.quoteVolume.tr(),
              value: summaryData.volumeQuote.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

class _PriceDetailItem extends StatelessWidget {
  final String title;
  final String value;

  const _PriceDetailItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Text(value, style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}

class _PriceTitleItem extends StatelessWidget {
  final String title;

  const _PriceTitleItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleMedium);
  }
}
