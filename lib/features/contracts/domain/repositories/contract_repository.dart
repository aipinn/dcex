import 'package:dcex/core/result.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/domain/entities/contract_ticker.dart';
import 'package:dcex/features/contracts/domain/entities/funding_rate.dart';

abstract class ContractRepository {
  /// Get contract linears: U-Margined
  Future<Result<List<ContractMarket>>> getContractLinears(String exchange);

  /// Get contract inverse: Coin-Margined
  Future<Result<List<ContractMarket>>> getContractInverse(String exchange);

  /// Get contract ticker
  Future<Result<ContractTicker>> getContractTicker(
    String symbol,
    String exchange,
  );

  /// Get contract funding rate
  Future<Result<FundingRate>> getFundingRate(String symbol, String exchange);
}
