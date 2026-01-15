import 'package:dcex/features/contracts/presentation/providers/temp_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_form_provider.g.dart';

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
