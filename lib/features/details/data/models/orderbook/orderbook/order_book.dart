import 'package:dcex/features/details/data/models/orderbook/price/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_book.freezed.dart';

@freezed
abstract class OrderBook with _$OrderBook {
  const factory OrderBook(
    List<Price> asks,
    List<Price> bids,
    int nonce,
    String symbol,
    int timestamp,
  ) = _OrderBook;

  factory OrderBook.fromJson(Map<String, dynamic> json) {
    final asks = (json['asks'] as List).map((e) => Price.fromList(e)).toList();
    final bids = (json['bids'] as List).map((e) => Price.fromList(e)).toList();

    final nonce = json['nonce'];
    final symbol = json['symbol'];
    final timestamp = json['timestamp']; // ms
    return OrderBook(asks, bids, nonce, symbol, timestamp);
  }
}
