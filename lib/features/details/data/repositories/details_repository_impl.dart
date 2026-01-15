import 'package:dcex/core/model/api_response_parse.dart';
import 'package:dcex/core/result.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/shared/network/api_const.dart';
import 'package:dcex/constants/data_exceptions.dart';
import 'package:dcex/features/details/data/models/graph/graph/graph.dart';
import 'package:dcex/features/details/data/models/graph/graph_response/graph_response.dart';
import 'package:dcex/features/details/data/models/trades/trade/trade.dart';
import 'package:dcex/features/details/data/models/trades/trade_response.dart/trade_response.dart';
import 'package:dcex/features/details/domain/deatils_repository_api.dart';
import 'package:dcex/shared/network/dio_providers.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailsRepositoryProvider = Provider<DetailsRepositoryImpl>((ref) {
  final dio = ref.watch(dioProvider);
  return DetailsRepositoryImpl(dio);
});

class DetailsRepositoryImpl implements DetailsRepositoryApi {
  final Dio dio;
  DetailsRepositoryImpl(this.dio);

  @override
  Future<Result<OrderBook>> getOrderBook(String exchange, String pair) async {
    // logInfo('===> Request get orderbook.');
    try {
      final response = await dio.get(
        APIConst.orderBook,
        queryParameters: {"exchange": exchange, "symbol": pair, "limit": 50},
      );

      final apiResponse = parseApiResponse<OrderBook>(
        response.data,
        OrderBook.fromJson,
      );
      final data = apiResponse.data;
      if (data != null) {
        return Success(data);
      }
      return Failure(apiResponse.msg);
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
      final apiResponse = parseApiResponse(
        response.data,
        TradeResponse.fromJson,
      );
      final data = apiResponse.data;
      if (data != null) {
        return data.result!;
      }
      throw DataExceptions(apiResponse.msg);
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

      final apiResponse = parseApiResponse(
        response.data,
        GraphResponse.fromJson,
      );
      final data = apiResponse.data;
      if (data != null) {
        return data.result;
      }
      throw DataExceptions(apiResponse.msg);
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }
}
