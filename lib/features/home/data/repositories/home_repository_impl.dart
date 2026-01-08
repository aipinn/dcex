import 'package:dcex/constants/api_const.dart';
import 'package:dcex/constants/data_exceptions.dart';
import 'package:dcex/features/details/data/models/markets/market_response/market_response.dart';
import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange.dart/exchange.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange_response/exchange_response.dart';
import 'package:dcex/features/home/data/models/pair/pair_response/pair_response.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';
import 'package:dcex/features/home/domain/home_repository_api.dart';
import 'package:dcex/shared/network/api_provider.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepositoryProvider = Provider<HomeRepositoryImpl>((ref) {
  final dio = ref.watch(clientProvider);
  return HomeRepositoryImpl(dio);
});

class HomeRepositoryImpl implements HomeRepositoryApi {
  final Dio dio;
  HomeRepositoryImpl(this.dio);

  @override
  Future<List<Exchange>> getExchanges() async {
    logInfo('===> Request get exchanges.');
    try {
      final response = await dio.get(APIConst.exchanges);
      return ExchangeResponse.fromJson(response.data).result;
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }

  @override
  Future<PairSummary> getPairSummary(String exchange, String pair) async {
    logInfo('===> Request get pair summary');
    try {
      final response = await dio.get(
        APIConst.pairSummary,
        queryParameters: {"exchange": exchange, "symbol": pair},
      );
      return PairResponse.fromJson(response.data).result;
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }

  @override
  Future<List<Pair>> getPairs(String exchange) async {
    logInfo('===> Request get pairs.');
    try {
      final response = await dio.get(
        APIConst.pair,
        queryParameters: {
          'exchange': exchange,
          'market': 'spot',
          'page': 1,
          'page_size': 100,
        },
      );
      return MarketResponse.fromJson(response.data).result.spot;
    } on DioException catch (error) {
      throw DataExceptions('message: ${error.message}');
    }
  }
}
