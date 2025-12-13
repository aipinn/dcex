import 'package:dcex/constants/api_const.dart';
import 'package:dcex/constants/data_exceptions.dart';
import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:dcex/features/details/data/models/graph/graph_response/graph_response.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook_response/orderbook_response.dart';
import 'package:dcex/features/details/data/models/trades/trade/trade.dart';
import 'package:dcex/features/details/data/models/trades/trade_response.dart/trade_response.dart';
import 'package:dcex/features/details/domain/deatils_repository_api.dart';
import 'package:dcex/shared/network/api_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailsRepositoryProvider = Provider<DetailsRepositoryImpl>((ref) {
  final dio = ref.watch(clientProvider);
  return DetailsRepositoryImpl(dio);
});

class DetailsRepositoryImpl implements DetailsRepositoryApi {
  final Dio dio;
  DetailsRepositoryImpl(this.dio);

  @override
  Future<OrderBook> getOrderBook(String exchange, String pair) async {
    // logInfo('===> Request get orderbook.');
    try {
      final response = await dio.get(
        APIConst.orderBook,
        queryParameters: {"exchange": exchange, "symbol": pair, "limit": 50},
      );
      return OrderbookResponse.fromJson(response.data).result;
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }

  @override
  Future<List<Trade>> getTrades(
    String market,
    String pair, {
    int limit = 100,
  }) async {
    // logInfo('===> Request get trades.');
    try {
      final response = await dio.get(
        APIConst.trades,
        queryParameters: {'exchange': market, 'symbol': pair, 'limit': limit},
      );
      return TradeResponse.fromJson(response.data).result!;
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }

  @override
  Future<Graph> getPairGraph(
    String marker,
    String pair, {
    String period = "",
    String after = "",
    String before = "",
  }) async {
    // logInfo('===> Request get pair graph.');

    try {
      final response = await dio.get(
        APIConst.ohlc,
        queryParameters: {
          'exchange': marker,
          'symbol': pair,
          'periods': period,
          'after': after,
          'before': before,
        },
      );
      return GraphResponse.fromJson(response.data).result;
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }
}
