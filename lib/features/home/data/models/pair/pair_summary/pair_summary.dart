import 'package:dcex/features/home/data/models/pair/price/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair_summary.freezed.dart';
part 'pair_summary.g.dart';

@freezed
abstract class PairSummary with _$PairSummary {
  const factory PairSummary({
    required String symbol,
    required Price price,
    required double volume,
    required double volumeQuote,
    required int timestamp,
  }) = _PairSummary;

  factory PairSummary.fromJson(Map<String, dynamic> json) =>
      _$PairSummaryFromJson(json);
}
