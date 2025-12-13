import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderbook_response.freezed.dart';

@freezed
abstract class OrderbookResponse with _$OrderbookResponse {
  const factory OrderbookResponse(OrderBook result) = _OrderbookResponse;

  factory OrderbookResponse.fromJson(Map<String, dynamic> json) {
    final result = OrderBook.fromJson(json['result']);
    return OrderbookResponse(result);
  }
}
