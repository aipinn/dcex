import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:dcex/features/home/data/models/exchanges/exchange.dart/exchange.dart';
import 'package:dcex/features/home/data/models/pair/pair_summary/pair_summary.dart';

abstract class HomeRepositoryApi {
  /// Get the exchanges
  Future<List<Exchange>> getExchanges();

  /// Get piars from a market
  Future<List<Pair>> getPairs(String market);

  /// Get the summary of a pair
  Future<PairSummary> getPairSummary(String market, String pair);
}
