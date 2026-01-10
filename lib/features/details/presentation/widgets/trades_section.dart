import 'package:dcex/constants/color_preset.dart';
import 'package:dcex/constants/utils.dart' as utils;
import 'package:dcex/features/details/data/models/trades/trade/trade_extension.dart';
import 'package:dcex/features/details/presentation/scope/detail_scope_providers.dart';
import 'package:dcex/generated/locale_keys.g.dart';
import 'package:dcex/features/details/data/models/trades/trade/trade.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TradesSection extends ConsumerWidget {
  final List<Trade> tradesData;
  const TradesSection({super.key, required this.tradesData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(currentDetailPairSummary);

    return Column(
      children: [
        SizedBox(height: 6),
        Row(
          children: [
            ...[
              LocaleKeys.time.tr(),
              LocaleKeys.price.tr(),
              LocaleKeys.amount.tr(),
            ].map((e) => Expanded(child: _TradesTitleItem(title: e))),
          ],
        ),
        SizedBox(height: 6),

        Expanded(
          child: ListView.builder(
            primary: false,
            itemCount: tradesData.length,
            itemBuilder: (BuildContext context, int index) {
              return _TradeTile(data: tradesData[index], summary: summary);
            },
          ),
        ),
      ],
    );
  }
}

class _TradeTile extends ConsumerWidget {
  const _TradeTile({required this.data, required this.summary});

  final TickerEntity summary;
  final Trade data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Expanded(
            child: _TradesDetailItem(
              value: utils.formatTimestampMs(data.timestamp),
              align: TextAlign.center,
            ),
          ),
          Expanded(
            child: _TradesDetailItem(
              value: data.price,
              align: TextAlign.center,
              color: data.tradeColor,
            ),
          ),
          Expanded(
            child: _TradesDetailItem(
              value: data.amount,
              align: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _TradesDetailItem extends StatelessWidget {
  final String value;
  final TextAlign align;
  final Color color;

  const _TradesDetailItem({
    required this.value,
    required this.align,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: align,
      style: TextStyle(fontSize: 16, color: color),
    );
  }
}

class _TradesTitleItem extends StatelessWidget {
  final String title;

  const _TradesTitleItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

extension TradePresentationX on Trade {
  Color get tradeColor {
    switch (tradeSide) {
      case TradeSide.buy:
        return TrendColors.up;
      case TradeSide.sell:
        return TrendColors.down;
      case TradeSide.unknown:
        return Colors.grey;
    }
  }
}
