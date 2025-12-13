import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair.freezed.dart';
part 'pair.g.dart';

// @freezed
// abstract class Pair with _$Pair {
//   const factory Pair({
//     int? id,
//     required String exchange,
//     required String pair,
//     bool? active,
//     String? route,
//   }) = _Pair;

//   factory Pair.fromJson(Map<String, dynamic> json) => _$PairFromJson(json);
// }

@freezed
abstract class Pair with _$Pair {
  const factory Pair({
    int? id,
    required String exchange,
    required String pair, // symbol，eg "BTC/USDT"
    bool? active,
    String? type, // "spot" / "future" / "option"
    String? route,
  }) = _Pair;

  factory Pair.fromJson(Map<String, dynamic> json) => _$PairFromJson(json);
}
