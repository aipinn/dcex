import 'package:dcex/core/result.dart';
import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook_response/orderbook_response.dart';
import 'package:dcex/features/details/data/models/trades/trade/trade.dart';

abstract class DetailsRepositoryApi {
  /// Get the graph of a pair
  Future<Graph> getPairGraph(
    String marker,
    String pair, {
    String period,
    String after,
    String before,
  });

  /// Get the order book of a pair
  Future<Result<OrderbookResponse>> getOrderBook(String market, String pair);

  /// Get the trade of a pair
  Future<List<Trade>> getTrades(String market, String pair);
}
