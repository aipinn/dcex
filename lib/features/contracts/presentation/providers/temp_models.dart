import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_models.freezed.dart';

@freezed
abstract class OrderFormState with _$OrderFormState {
  const factory OrderFormState({
    @Default('Limit') String orderType,
    @Default(0.0) double price,
    @Default(0.0) double amount,
    @Default(0.0) double availableBalance,
    @Default(false) bool useTpSl,
    @Default(0.0) double takeProfitPrice,
    @Default(0.0) double stopLossPrice,
    @Default('GTC') String timeInForce,
  }) = _OrderFormState;
}
