import 'package:dcex/features/details/data/models/trades/trade/trade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_response.freezed.dart';

@freezed
abstract class TradeResponse with _$TradeResponse {
  const factory TradeResponse({List<Trade>? result}) = _TradeResponse;

  factory TradeResponse.fromJson(Map<String, dynamic> json) {
    final List<Trade> result = <Trade>[];
    json['result'].forEach((v) {
      result.add(Trade.fromJson(v));
    });
    return TradeResponse(result: result);
  }
}
