import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderbook_response.freezed.dart';

@freezed
abstract class OrderbookResponse with _$OrderbookResponse {
  const factory OrderbookResponse({
    required Map<String, OrderBook> data,
    required int timestamp,
    required String marketType,
    required String exchange,
  }) = _OrderbookResponse;

  factory OrderbookResponse.fromJson(Map<String, dynamic> json) {
    final rawData = json['data'] as Map<String, dynamic>;

    final data = rawData.map(
      (key, value) =>
          MapEntry(key, OrderBook.fromJson(value as Map<String, dynamic>)),
    );
    return OrderbookResponse(
      data: data,
      timestamp: json['timestamp'] as int,
      marketType: json['marketType'] as String,
      exchange: json['exchange'] as String,
    );
  }
}
