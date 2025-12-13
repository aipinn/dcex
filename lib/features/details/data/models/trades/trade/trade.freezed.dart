// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Trade {

 String get id; String get timestamp;//ms
 String get price; String get amount;// amount of base currency
 String get side;
/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TradeCopyWith<Trade> get copyWith => _$TradeCopyWithImpl<Trade>(this as Trade, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trade&&(identical(other.id, id) || other.id == id)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.side, side) || other.side == side));
}


@override
int get hashCode => Object.hash(runtimeType,id,timestamp,price,amount,side);

@override
String toString() {
  return 'Trade(id: $id, timestamp: $timestamp, price: $price, amount: $amount, side: $side)';
}


}

/// @nodoc
abstract mixin class $TradeCopyWith<$Res>  {
  factory $TradeCopyWith(Trade value, $Res Function(Trade) _then) = _$TradeCopyWithImpl;
@useResult
$Res call({
 String id, String timestamp, String price, String amount, String side
});




}
/// @nodoc
class _$TradeCopyWithImpl<$Res>
    implements $TradeCopyWith<$Res> {
  _$TradeCopyWithImpl(this._self, this._then);

  final Trade _self;
  final $Res Function(Trade) _then;

/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? timestamp = null,Object? price = null,Object? amount = null,Object? side = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Trade].
extension TradePatterns on Trade {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trade value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trade() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trade value)  $default,){
final _that = this;
switch (_that) {
case _Trade():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trade value)?  $default,){
final _that = this;
switch (_that) {
case _Trade() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String timestamp,  String price,  String amount,  String side)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trade() when $default != null:
return $default(_that.id,_that.timestamp,_that.price,_that.amount,_that.side);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String timestamp,  String price,  String amount,  String side)  $default,) {final _that = this;
switch (_that) {
case _Trade():
return $default(_that.id,_that.timestamp,_that.price,_that.amount,_that.side);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String timestamp,  String price,  String amount,  String side)?  $default,) {final _that = this;
switch (_that) {
case _Trade() when $default != null:
return $default(_that.id,_that.timestamp,_that.price,_that.amount,_that.side);case _:
  return null;

}
}

}

/// @nodoc


class _Trade implements Trade {
  const _Trade(this.id, this.timestamp, this.price, this.amount, this.side);
  

@override final  String id;
@override final  String timestamp;
//ms
@override final  String price;
@override final  String amount;
// amount of base currency
@override final  String side;

/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TradeCopyWith<_Trade> get copyWith => __$TradeCopyWithImpl<_Trade>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trade&&(identical(other.id, id) || other.id == id)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.side, side) || other.side == side));
}


@override
int get hashCode => Object.hash(runtimeType,id,timestamp,price,amount,side);

@override
String toString() {
  return 'Trade(id: $id, timestamp: $timestamp, price: $price, amount: $amount, side: $side)';
}


}

/// @nodoc
abstract mixin class _$TradeCopyWith<$Res> implements $TradeCopyWith<$Res> {
  factory _$TradeCopyWith(_Trade value, $Res Function(_Trade) _then) = __$TradeCopyWithImpl;
@override @useResult
$Res call({
 String id, String timestamp, String price, String amount, String side
});




}
/// @nodoc
class __$TradeCopyWithImpl<$Res>
    implements _$TradeCopyWith<$Res> {
  __$TradeCopyWithImpl(this._self, this._then);

  final _Trade _self;
  final $Res Function(_Trade) _then;

/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? timestamp = null,Object? price = null,Object? amount = null,Object? side = null,}) {
  return _then(_Trade(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
