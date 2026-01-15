import 'dart:async';
import 'package:dcex/core/enums/futures_market_type.dart';
import 'package:dcex/core/enums/margin_mode.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_ws_provider.dart';
import 'package:dcex/features/contracts/presentation/providers/temp_models.dart';
import 'package:dcex/features/contracts/providers/contract_market_providers.dart';
import 'package:dcex/features/details/data/models/orderbook/orderbook/order_book.dart';
import 'package:dcex/features/details/data/models/orderbook/price/price.dart';
import 'package:dcex/features/settings/providers/settings_provider.dart';
import 'package:dcex/shared/market/domain/entities/futures_ticker.dart';
import 'package:dcex/shared/utils/count_down.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dcex/core/result.dart';

part 'futures_market_provider.g.dart';

@riverpod
class ExchangeContext extends _$ExchangeContext {
  @override
  String build() {
    final settings = ref.watch(settingsProvider);

    return settings.when(
      data: (s) => s.favoriteExchange,
      loading: () =>
          throw const AsyncError('exchange loading', StackTrace.empty),
      error: (e, _) => throw e,
    );
  }
}

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
  ContractMarket build() {
    final markets = ref.watch(inverseContractMarketsProvider).value;

    if (markets != null && markets.isNotEmpty) {
      return markets.first;
    }
    throw StateError('No contract market available');
  }

  void setMarket(ContractMarket market) {
    state = market;
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

// USDT Future Chart Expanded Provider
@riverpod
class UsdtFutureChartExpanded extends _$UsdtFutureChartExpanded {
  @override
  build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}

// USDT Position Tab Index Provider (持仓Tab索引)
@riverpod
class UsdtPositionTabIndex extends _$UsdtPositionTabIndex {
  @override
  build() {
    return 0;
  }

  void change(int index) {
    state = index;
  }
}

// USDT Leverage Provider
@riverpod
class UsdtLeverageIndex extends _$UsdtLeverageIndex {
  @override
  build() {
    return 2;
  }

  void change(int index) {
    state = index;
  }
}

// USDT Margin Mode Provider (保证金模式: Cross/Isolated)
@riverpod
class UsdtMarginMode extends _$UsdtMarginMode {
  @override
  MarginMode build() {
    return MarginMode.cross;
  }

  void toggle() {
    state = state == MarginMode.cross ? MarginMode.isolated : MarginMode.cross;
  }

  void set(MarginMode mode) {
    state = mode;
  }
}

// Order Form State Provider (下单表单状态)
@riverpod
class OrderForm extends _$OrderForm {
  @override
  OrderFormState build() {
    return OrderFormState();
  }

  void updatePrice(double price) {
    state = state.copyWith(price: price);
  }

  void updateAmount(double amount) {
    state = state.copyWith(amount: amount);
  }

  void updateOrderType(String type) {
    state = state.copyWith(orderType: type);
  }

  void toggleTpSl() {
    state = state.copyWith(useTpSl: !state.useTpSl);
  }

  void updateTimeInForce(String tif) {
    state = state.copyWith(timeInForce: tif);
  }
}

/// Current Select Limit Price Provider
@riverpod
class ContactSelectLimitPrice extends _$ContactSelectLimitPrice {
  @override
  build() {
    return 0.0;
  }

  void update(double value) {
    state = value;
  }

  double get price => state as double;
}

/// Current Inverse Entity Provider
final currentInverseEntityProvider = Provider.autoDispose<FuturesTickerEntity>((
  ref,
) {
  final market = ref.watch(selectedInverseContractMarketProvider);
  final asyncTicker = ref.watch(pairFutureWsProvider(market.symbol));

  return asyncTicker.when(
    data: (ticker) => ticker as FuturesTickerEntity,
    loading: () => throw const AsyncError('ticker loading', StackTrace.empty),
    error: (e, _) => throw e,
  );
});

@riverpod
class UsdtFundingCountdown extends _$UsdtFundingCountdown {
  Timer? _timer;
  int _target = 0;

  @override
  Countdown? build() {
    final ticker = ref.watch(currentInverseEntityProvider);

    final nextFundingTime = ticker.getNextFundingTime;

    _start(nextFundingTime);

    ref.onDispose(() {
      _timer?.cancel();
    });

    return null;
  }

  void _start(int nextFundingTime) {
    _target = nextFundingTime ~/ 1000;

    _tick(); // 立刻算一次
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _tick();
    });
  }

  void _tick() {
    final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final remain = _target - now;
    state = Countdown(remain > 0 ? remain : 0);
  }
}
