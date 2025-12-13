import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade.freezed.dart';

@freezed
abstract class Trade with _$Trade {
  const factory Trade(
    String id,
    String timestamp, //ms
    String price,
    String amount, // amount of base currency
    String side,
  ) = _Trade;

  factory Trade.fromJson(List<dynamic> json) {
    return Trade(
      json[0].toString(),
      json[1].toString(),
      json[2].toString(),
      json[3].toString(),
      json[4].toString(),
    );
  }
}
