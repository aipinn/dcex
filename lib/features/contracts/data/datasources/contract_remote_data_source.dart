import 'package:dcex/core/model/api_response_parse.dart';
import 'package:dcex/core/result.dart';
import 'package:dcex/features/contracts/data/models/contract_market_model.dart';
import 'package:dcex/features/contracts/data/models/contract_market_response.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/domain/entities/contract_ticker.dart';
import 'package:dcex/features/contracts/domain/entities/funding_rate.dart';
import 'package:dcex/shared/network/api_client.dart';
import 'package:dcex/shared/network/api_client_provider.dart';
import 'package:dcex/shared/network/api_const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ContractRemoteDataSource {
  /// Get contract funding rate
  Future<Result<FundingRate>> getFundingRate(String symbol, String exchange);

  /// Get contract linears: U-Margined
  Future<Result<List<ContractMarket>>> getContractLinears(String exchange);

  /// Get contract inverse: Coin-Margined
  Future<Result<List<ContractMarket>>> getContractInverse(String exchange);

  /// Get contract ticker
  Future<Result<ContractTicker>> getContractTicker(
    String symbol,
    String exchange,
  );
}

class ContractRemoteDataSourceImpl implements ContractRemoteDataSource {
  final ApiClient _apiClient;
  ContractRemoteDataSourceImpl(this._apiClient);

  Future<Result<List<ContractMarket>>> _getMarkets(
    String exchange,
    String type,
  ) async {
    final response = await _apiClient.get(
      APIConst.contractMarkets,
      queryParameters: {'exchange': exchange, 'type': type},
    );
    switch (response) {
      case Success(:final value):
        final apiResponse = parseApiResponse(
          value as Map<String, dynamic>,
          ContractMarketResponse.fromJson,
        );

        final data = apiResponse.data;
        if (data != null) {
          return Result.success(data.result);
        }
        return Failure(apiResponse.msg);
      case Failure(message: final msg):
        return Result.failure(msg);
    }
    throw StateError('Unreachable');
  }

  @override
  Future<Result<List<ContractMarket>>> getContractInverse(String exchange) {
    return _getMarkets(exchange, 'inverse');
  }

  @override
  Future<Result<List<ContractMarket>>> getContractLinears(String exchange) {
    return _getMarkets(exchange, 'linear');
  }

  @override
  Future<Result<ContractTicker>> getContractTicker(
    String symbol,
    String exchange,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<Result<FundingRate>> getFundingRate(String symbol, String exchange) {
    throw UnimplementedError();
  }
}

final contractRemoteDataSourceProvider = Provider<ContractRemoteDataSource>((
  ref,
) {
  return ContractRemoteDataSourceImpl(ref.watch(apiClientProvider));
});
