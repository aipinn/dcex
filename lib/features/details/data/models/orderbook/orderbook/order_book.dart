import 'package:dcex/features/details/data/models/orderbook/price/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_book.freezed.dart';

@freezed
abstract class OrderBook with _$OrderBook {
  const factory OrderBook(
    List<Price> asks,
    List<Price> bids,
    int seqNum,
    String symbol,
    int timestamp,
  ) = _OrderBook;

  factory OrderBook.fromJson(Map<String, dynamic> json) {
    List<Price> asks = <Price>[];

    json['asks'].forEach((v) {
      // sorted by price in ascending order
      asks.add(
        Price(
          price: double.parse(v[0].toString()),
          amount: double.parse(v[1].toString()),
        ),
      );
    });
    List<Price> bids = <Price>[];
    // sorted by price in descending order
    json['bids'].forEach((v) {
      bids.add(
        Price(
          price: double.parse(v[0].toString()),
          amount: double.parse(v[1].toString()),
        ),
      );
    });
    final seqNum = json['seqNum'];
    final symbol = json['symbol'];
    final timestamp = json['timestamp']; // ms
    return OrderBook(asks, bids, seqNum, symbol, timestamp);
  }
}
