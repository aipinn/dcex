import 'package:dcex/core/result.dart';
import 'package:dcex/shared/market/data/datasources/ticker_remote_data_source.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/market/domain/repositories/ticker_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TickerRepositoryImpl implements TickerRepository {
  final TickerRemoteDatasource _remoteDatasource;
  TickerRepositoryImpl(this._remoteDatasource);

  @override
  Future<Result<TickerEntity>> getTicker(
    String exchange,
    String symbol,
    String marketType,
  ) {
    return _remoteDatasource.getTicker(symbol, exchange, marketType);
  }
}

final tickerRepositoryProvider = Provider<TickerRepositoryImpl>((ref) {
  final remoteDatasource = ref.watch(tickerRemoteDatasourceProvider);
  return TickerRepositoryImpl(remoteDatasource);
});
