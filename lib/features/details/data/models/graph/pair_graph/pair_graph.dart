import 'package:dcex/features/details/data/models/graph/points/points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair_graph.freezed.dart';

@freezed
abstract class PairGraph with _$PairGraph {
  const factory PairGraph({
    required String period,
    required List<Points> points,
  }) = _PairGraph;

  factory PairGraph.fromJson(dynamic json, String period) {
    List<Points> points = <Points>[];
    json.forEach((element) {
      points.add(Points.fromJson(element));
    });
    return PairGraph(period: period, points: points);
  }
}
