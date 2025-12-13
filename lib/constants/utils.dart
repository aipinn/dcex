import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:easy_localization/easy_localization.dart';

String formatTimestampMs(String timestampMs) {
  final DateTime timeStamp = DateTime.fromMillisecondsSinceEpoch(
    int.parse(timestampMs),
  );
  return DateFormat('HH:mm:ss').format(timeStamp);
}

List<double> getPoints(Graph graph) {
  if (graph.pairs[0].points.isNotEmpty) {
    return graph.pairs.first.points.map((e) => e.closePrice).toList();
  } else {
    return [];
  }
}

final List<double> placeholdGraphData = const [
  41,
  88,
  30,
  47,
  29,
  18,
  58,
  63,
  33,
  37,
  22,
  96,
  1,
  62,
  26,
  57,
  67,
  40,
  51,
  53,
  91,
  71,
  92,
  69,
  19,
  30,
  47,
  63,
  33,
  28,
  29,
  69,
  19,
  55,
  56,
  97,
];
