import 'package:dcex/core/enums/margin_mode.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'futures_ui_state_provider.g.dart';

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
