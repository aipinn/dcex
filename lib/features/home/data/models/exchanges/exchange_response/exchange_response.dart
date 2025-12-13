import 'package:dcex/features/home/data/models/exchanges/exchange.dart/exchange.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_response.freezed.dart';
part 'exchange_response.g.dart';

@freezed
abstract class ExchangeResponse with _$ExchangeResponse {
  const factory ExchangeResponse({required List<Exchange> result}) =
      _ExchangeResponse;

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);
}
