// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderFormState {

 String get orderType; double get price; double get amount; double get availableBalance; bool get useTpSl; double get takeProfitPrice; double get stopLossPrice; String get timeInForce;
/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderFormStateCopyWith<OrderFormState> get copyWith => _$OrderFormStateCopyWithImpl<OrderFormState>(this as OrderFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderFormState&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.availableBalance, availableBalance) || other.availableBalance == availableBalance)&&(identical(other.useTpSl, useTpSl) || other.useTpSl == useTpSl)&&(identical(other.takeProfitPrice, takeProfitPrice) || other.takeProfitPrice == takeProfitPrice)&&(identical(other.stopLossPrice, stopLossPrice) || other.stopLossPrice == stopLossPrice)&&(identical(other.timeInForce, timeInForce) || other.timeInForce == timeInForce));
}


@override
int get hashCode => Object.hash(runtimeType,orderType,price,amount,availableBalance,useTpSl,takeProfitPrice,stopLossPrice,timeInForce);

@override
String toString() {
  return 'OrderFormState(orderType: $orderType, price: $price, amount: $amount, availableBalance: $availableBalance, useTpSl: $useTpSl, takeProfitPrice: $takeProfitPrice, stopLossPrice: $stopLossPrice, timeInForce: $timeInForce)';
}


}

/// @nodoc
abstract mixin class $OrderFormStateCopyWith<$Res>  {
  factory $OrderFormStateCopyWith(OrderFormState value, $Res Function(OrderFormState) _then) = _$OrderFormStateCopyWithImpl;
@useResult
$Res call({
 String orderType, double price, double amount, double availableBalance, bool useTpSl, double takeProfitPrice, double stopLossPrice, String timeInForce
});




}
/// @nodoc
class _$OrderFormStateCopyWithImpl<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  _$OrderFormStateCopyWithImpl(this._self, this._then);

  final OrderFormState _self;
  final $Res Function(OrderFormState) _then;

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderType = null,Object? price = null,Object? amount = null,Object? availableBalance = null,Object? useTpSl = null,Object? takeProfitPrice = null,Object? stopLossPrice = null,Object? timeInForce = null,}) {
  return _then(_self.copyWith(
orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,availableBalance: null == availableBalance ? _self.availableBalance : availableBalance // ignore: cast_nullable_to_non_nullable
as double,useTpSl: null == useTpSl ? _self.useTpSl : useTpSl // ignore: cast_nullable_to_non_nullable
as bool,takeProfitPrice: null == takeProfitPrice ? _self.takeProfitPrice : takeProfitPrice // ignore: cast_nullable_to_non_nullable
as double,stopLossPrice: null == stopLossPrice ? _self.stopLossPrice : stopLossPrice // ignore: cast_nullable_to_non_nullable
as double,timeInForce: null == timeInForce ? _self.timeInForce : timeInForce // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderFormState].
extension OrderFormStatePatterns on OrderFormState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderFormState value)  $default,){
final _that = this;
switch (_that) {
case _OrderFormState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderFormState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderType,  double price,  double amount,  double availableBalance,  bool useTpSl,  double takeProfitPrice,  double stopLossPrice,  String timeInForce)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
return $default(_that.orderType,_that.price,_that.amount,_that.availableBalance,_that.useTpSl,_that.takeProfitPrice,_that.stopLossPrice,_that.timeInForce);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderType,  double price,  double amount,  double availableBalance,  bool useTpSl,  double takeProfitPrice,  double stopLossPrice,  String timeInForce)  $default,) {final _that = this;
switch (_that) {
case _OrderFormState():
return $default(_that.orderType,_that.price,_that.amount,_that.availableBalance,_that.useTpSl,_that.takeProfitPrice,_that.stopLossPrice,_that.timeInForce);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderType,  double price,  double amount,  double availableBalance,  bool useTpSl,  double takeProfitPrice,  double stopLossPrice,  String timeInForce)?  $default,) {final _that = this;
switch (_that) {
case _OrderFormState() when $default != null:
return $default(_that.orderType,_that.price,_that.amount,_that.availableBalance,_that.useTpSl,_that.takeProfitPrice,_that.stopLossPrice,_that.timeInForce);case _:
  return null;

}
}

}

/// @nodoc


class _OrderFormState implements OrderFormState {
  const _OrderFormState({this.orderType = 'Limit', this.price = 0.0, this.amount = 0.0, this.availableBalance = 0.0, this.useTpSl = false, this.takeProfitPrice = 0.0, this.stopLossPrice = 0.0, this.timeInForce = 'GTC'});
  

@override@JsonKey() final  String orderType;
@override@JsonKey() final  double price;
@override@JsonKey() final  double amount;
@override@JsonKey() final  double availableBalance;
@override@JsonKey() final  bool useTpSl;
@override@JsonKey() final  double takeProfitPrice;
@override@JsonKey() final  double stopLossPrice;
@override@JsonKey() final  String timeInForce;

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderFormStateCopyWith<_OrderFormState> get copyWith => __$OrderFormStateCopyWithImpl<_OrderFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderFormState&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.availableBalance, availableBalance) || other.availableBalance == availableBalance)&&(identical(other.useTpSl, useTpSl) || other.useTpSl == useTpSl)&&(identical(other.takeProfitPrice, takeProfitPrice) || other.takeProfitPrice == takeProfitPrice)&&(identical(other.stopLossPrice, stopLossPrice) || other.stopLossPrice == stopLossPrice)&&(identical(other.timeInForce, timeInForce) || other.timeInForce == timeInForce));
}


@override
int get hashCode => Object.hash(runtimeType,orderType,price,amount,availableBalance,useTpSl,takeProfitPrice,stopLossPrice,timeInForce);

@override
String toString() {
  return 'OrderFormState(orderType: $orderType, price: $price, amount: $amount, availableBalance: $availableBalance, useTpSl: $useTpSl, takeProfitPrice: $takeProfitPrice, stopLossPrice: $stopLossPrice, timeInForce: $timeInForce)';
}


}

/// @nodoc
abstract mixin class _$OrderFormStateCopyWith<$Res> implements $OrderFormStateCopyWith<$Res> {
  factory _$OrderFormStateCopyWith(_OrderFormState value, $Res Function(_OrderFormState) _then) = __$OrderFormStateCopyWithImpl;
@override @useResult
$Res call({
 String orderType, double price, double amount, double availableBalance, bool useTpSl, double takeProfitPrice, double stopLossPrice, String timeInForce
});




}
/// @nodoc
class __$OrderFormStateCopyWithImpl<$Res>
    implements _$OrderFormStateCopyWith<$Res> {
  __$OrderFormStateCopyWithImpl(this._self, this._then);

  final _OrderFormState _self;
  final $Res Function(_OrderFormState) _then;

/// Create a copy of OrderFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderType = null,Object? price = null,Object? amount = null,Object? availableBalance = null,Object? useTpSl = null,Object? takeProfitPrice = null,Object? stopLossPrice = null,Object? timeInForce = null,}) {
  return _then(_OrderFormState(
orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,availableBalance: null == availableBalance ? _self.availableBalance : availableBalance // ignore: cast_nullable_to_non_nullable
as double,useTpSl: null == useTpSl ? _self.useTpSl : useTpSl // ignore: cast_nullable_to_non_nullable
as bool,takeProfitPrice: null == takeProfitPrice ? _self.takeProfitPrice : takeProfitPrice // ignore: cast_nullable_to_non_nullable
as double,stopLossPrice: null == stopLossPrice ? _self.stopLossPrice : stopLossPrice // ignore: cast_nullable_to_non_nullable
as double,timeInForce: null == timeInForce ? _self.timeInForce : timeInForce // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
