import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_pair.freezed.dart';
part 'favorite_pair.g.dart';

@freezed
abstract class FavoritePair with _$FavoritePair {
  const factory FavoritePair({
    required Pair pair,
    required PairSummary pairSummary,
  }) = _FavoritePair;

  factory FavoritePair.fromJson(Map<String, dynamic> json) =>
      _$FavoritePairFromJson(json);
}
