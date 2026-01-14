import 'package:dcex/core/model/api_response_parse.dart';
import 'package:dcex/core/result.dart';
import 'package:dcex/shared/network/api_const.dart';
import 'package:dcex/constants/data_exceptions.dart';
import 'package:dcex/features/details/data/models/markets/market_response/market_response.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange/exchange.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange_response/exchange_response.dart';
import 'package:dcex/features/home/domain/home_repository_api.dart';
import 'package:dcex/shared/network/dio_providers.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepositoryProvider = Provider<HomeRepositoryImpl>((ref) {
  final dio = ref.watch(dioProvider);
  return HomeRepositoryImpl(dio);
});

class HomeRepositoryImpl implements HomeRepositoryApi {
  final Dio dio;
  HomeRepositoryImpl(this.dio);

  @override
  Future<Result<List<Exchange>>> getExchanges() async {
    logInfo('===> Request get exchanges.');
    try {
      final response = await dio.get(APIConst.exchanges);

      final apiResponse = parseApiResponse(
        response.data,
        ExchangeResponse.fromJson,
      );
      final data = apiResponse.data;
      if (data != null) {
        return Success(data.result);
      }
      return Failure(apiResponse.msg);
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }

  @override
  Future<Result<MarketResponse>> getPairs(
    String exchange, {
    String market = 'spot',
  }) async {
    logInfo('===> Request get pairs.');
    try {
      final response = await dio.get(
        APIConst.pair,
        queryParameters: {
          'exchange': exchange,
          'market': market,
          'page': 1,
          'page_size': 30,
        },
      );

      final apiResponse = parseApiResponse(
        response.data,
        MarketResponse.fromJson,
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
}
