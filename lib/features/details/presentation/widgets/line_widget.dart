import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dcex/constants/utils.dart' as utils;
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  final List<double> data;
  final Color color;
  final bool loading;
  final bool error;

  const LineChartWidget({
    super.key,
    this.data = const [],
    this.color = Colors.greenAccent,
    this.loading = false,
    this.error = false,
  });

  @override
  Widget build(BuildContext context) {
    final showRealData = data.isNotEmpty && !loading && !error;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Opacity(
          opacity: showRealData ? 1 : 0.3,
          child: LineChart(
            mainData(showRealData ? data : utils.placeholdGraphData),
            duration: Duration.zero,
          ),
        ),
        if (loading)
          Center(child: CircularProgressIndicator())
        else if (error || data.isEmpty)
          Center(child: Text("No data")),
      ],
    );
  }

  LineChartData mainData(List<double> data) {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: true,
        horizontalInterval: 4,
        getDrawingHorizontalLine: (value) {
          return FlLine(color: Colors.black87, strokeWidth: 1);
        },
        getDrawingVerticalLine: (value) {
          return FlLine(color: Colors.black87, strokeWidth: 1);
        },
      ),
      titlesData: FlTitlesData(show: false),
      borderData: FlBorderData(show: false), // Outline border
      minX: 0,
      maxX: data.length.toDouble() - 1,
      minY: data.reduce(min).toDouble(),
      maxY: data.reduce(max).toDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: listData(data),
          color: color,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                color.withValues(alpha: 0.01),
                color.withValues(alpha: 0.3),
              ],
              begin: const Alignment(0, 0.9),
              end: const Alignment(0, 0.5),
            ),
          ),
        ),
      ],
    );
  }

  List<FlSpot> listData(List<double> data) {
    return data
        .mapIndexed((e, i) => FlSpot(e.toDouble(), i.toDouble()))
        .toList();
  }
}
