// data/repository/contract_repository_impl.dart
import 'package:dcex/features/contracts/data/datasources/contract_remote_data_source.dart';
import 'package:dcex/core/result.dart';
import 'package:dcex/features/contracts/domain/repositories/contract_repository.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/domain/entities/contract_ticker.dart';
import 'package:dcex/features/contracts/domain/entities/funding_rate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContractRepositoryImpl implements ContractRepository {
  final ContractRemoteDataSource _remoteDataSource;
  const ContractRepositoryImpl(this._remoteDataSource);

  @override
  Future<Result<ContractTicker>> getContractTicker(
    String symbol,
    String exchange,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ContractMarket>>> getContractInverse(String exchange) {
    return _remoteDataSource.getContractInverse(exchange);
  }

  @override
  Future<Result<List<ContractMarket>>> getContractLinears(String exchange) {
    return _remoteDataSource.getContractLinears(exchange);
  }

  @override
  Future<Result<FundingRate>> getFundingRate(String symbol, String exchange) {
    throw UnimplementedError();
  }
}

final contractRepositoryProvider = Provider<ContractRepositoryImpl>((ref) {
  final remoteDataSource = ref.watch(contractRemoteDataSourceProvider);
  return ContractRepositoryImpl(remoteDataSource);
});
