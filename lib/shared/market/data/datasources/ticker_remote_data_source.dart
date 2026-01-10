import 'package:dcex/core/result.dart';
import 'package:dcex/shared/market/data/models/futures_ticker_model.dart';
import 'package:dcex/shared/market/data/models/options_ticker_model.dart';
import 'package:dcex/shared/market/data/models/spot_ticker_model.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/network/api_client.dart';
import 'package:dcex/shared/network/api_client_provider.dart';
import 'package:dcex/shared/network/api_const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class TickerRemoteDatasource {
  Future<Result<TickerEntity>> getTicker(
    String symbol,
    String exchange,
    String marketType,
  );
}

class TickerRemoteDatasourceImpl implements TickerRemoteDatasource {
  final ApiClient _apiClient;
  TickerRemoteDatasourceImpl(this._apiClient);

  @override
  Future<Result<TickerEntity>> getTicker(
    String symbol,
    String exchange,
    String marketType,
  ) async {
    final result = await _apiClient.get(
      APIConst.ticker,
      queryParameters: {
        'exchange': exchange,
        'symbol': symbol,
        'market_type': marketType,
      },
    );

    switch (result) {
      case Success(:final value):
        final map = value as Map<String, dynamic>;
        final data = map['result']['ticker'] as Map<String, dynamic>;
        final ticker = switch (data['marketType']) {
          'spot' => SpotTickerModel.fromJson(data),
          'perpetual' || 'delivery' => FuturesTickerModel.fromJson(data),
          'option' => OptionsTickerModel.fromJson(data),
          _ => throw Exception('未知 marketType'),
        };
        return Result.success(ticker);
      case Failure(message: final msg):
        return Result.failure(msg);
    }
    throw StateError('Unreachable');
  }
}

final tickerRemoteDatasourceProvider = Provider<TickerRemoteDatasourceImpl>((
  ref,
) {
  return TickerRemoteDatasourceImpl(ref.watch(apiClientProvider));
});
