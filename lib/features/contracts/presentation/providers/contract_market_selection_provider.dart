import 'package:dcex/core/enums/futures_market_type.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/presentation/providers/contract_market_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contract_market_selection_provider.g.dart';

/// Selected U-Margined Contract
@riverpod
class SelectedLinearContractMarket extends _$SelectedLinearContractMarket {
  @override
  ContractMarket build() {
    final markets = ref.watch(linearContractMarketsProvider).value;

    if (markets != null && markets.isNotEmpty) {
      return markets.first;
    }
    throw StateError('No contract market available');
  }

  void setMarket(ContractMarket market) {
    state = market;
  }
}

/// Selected Coin-Margined Contract
@riverpod
class SelectedInverseContractMarket extends _$SelectedInverseContractMarket {
  @override
  AsyncValue<ContractMarket> build() {
    final marketsAsync = ref.watch(inverseContractMarketsProvider);
    return marketsAsync.when(
      data: (List<ContractMarket> data) {
        if (data.isNotEmpty) {
          return AsyncData(data.first);
        }
        return AsyncError('No contract market available', StackTrace.empty);
      },
      error: (Object error, StackTrace stackTrace) {
        return AsyncError(error, stackTrace);
      },
      loading: () {
        return AsyncValue.loading();
      },
    );
  }

  void setMarket(ContractMarket market) {
    state = AsyncValue.data(market);
  }
}

// Future Market Type Provider
@riverpod
class FutureMarketType extends _$FutureMarketType {
  @override
  build() {
    return FuturesMarketType.usdM;
  }

  void change(FuturesMarketType type) {
    state = type;
  }
}
