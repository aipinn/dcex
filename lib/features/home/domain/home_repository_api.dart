import 'package:dcex/core/result.dart';
import 'package:dcex/features/details/data/models/markets/market_response/market_response.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange/exchange.dart';

abstract class HomeRepositoryApi {
  /// Get the exchanges
  Future<Result<List<Exchange>>> getExchanges();

  /// Get piars from a market
  Future<Result<MarketResponse>> getPairs(
    String exchange, {
    String market = 'spot',
  });

  /// Get the summary of a pair
  // Future<PairSummary> getPairSummary(String market, String pair);
}
