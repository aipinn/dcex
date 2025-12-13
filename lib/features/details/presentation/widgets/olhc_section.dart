import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interactive_chart/interactive_chart.dart';

class OlhcSection extends ConsumerWidget {
  final Graph graphData;
  final double height;
  const OlhcSection({super.key, required this.height, required this.graphData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: height,
      child: InteractiveChart(candles: convert(graphData)),
    );
  }

  List<CandleData> convert(Graph data) {
    final candles = data.pairs.first.points
        .map(
          (e) => CandleData(
            timestamp: (e.timestamp * 1000).toInt(),
            open: e.openPrice,
            close: e.closePrice,
            volume: e.volume,
            high: e.highPrice,
            low: e.lowPrice,
          ),
        )
        .toList();
    return candles;
  }
}
