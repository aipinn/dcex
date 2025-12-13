import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_response.freezed.dart';

@freezed
abstract class GraphResponse with _$GraphResponse {
  const factory GraphResponse({required Graph result}) = _GraphResponse;

  factory GraphResponse.fromJson(Map<String, dynamic> json) {
    final result = Graph.fromJson(json['result']);
    return GraphResponse(result: result);
  }
}
