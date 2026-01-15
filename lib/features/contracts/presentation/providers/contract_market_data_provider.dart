import 'package:dcex/core/result.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/presentation/providers/exchange_cotext_provider.dart';
import 'package:dcex/features/contracts/providers/contract_market_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contract_market_data_provider.g.dart';

/// U-Margined Contract
@riverpod
Future<List<ContractMarket>> linearContractMarkets(Ref ref) async {
  final exchange = ref.watch(exchangeContextProvider);

  final usecase = ref.watch(contractMarketUsecaseProvider);
  final result = await usecase.callLinears(exchange);
  return result.when(
    success: (List<ContractMarket> value) {
      return value;
    },
    failure: (String message, Object? error) {
      throw error!;
    },
  );
}

/// Coin-Margined Contract
@riverpod
Future<List<ContractMarket>> inverseContractMarkets(Ref ref) async {
  final exchange = ref.watch(exchangeContextProvider);

  final usecase = ref.watch(contractMarketUsecaseProvider);
  final result = await usecase.callInverse(exchange);
  return result.when(
    success: (List<ContractMarket> value) {
      return value;
    },
    failure: (String message, Object? error) {
      throw error!;
    },
  );
}
