// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderBook {

 List<Price> get asks; List<Price> get bids; int get nonce; String get symbol; int get timestamp; String get action; String get marketType; String get exchange;
/// Create a copy of OrderBook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderBookCopyWith<OrderBook> get copyWith => _$OrderBookCopyWithImpl<OrderBook>(this as OrderBook, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderBook&&const DeepCollectionEquality().equals(other.asks, asks)&&const DeepCollectionEquality().equals(other.bids, bids)&&(identical(other.nonce, nonce) || other.nonce == nonce)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.action, action) || other.action == action)&&(identical(other.marketType, marketType) || other.marketType == marketType)&&(identical(other.exchange, exchange) || other.exchange == exchange));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(asks),const DeepCollectionEquality().hash(bids),nonce,symbol,timestamp,action,marketType,exchange);

@override
String toString() {
  return 'OrderBook(asks: $asks, bids: $bids, nonce: $nonce, symbol: $symbol, timestamp: $timestamp, action: $action, marketType: $marketType, exchange: $exchange)';
}


}

/// @nodoc
abstract mixin class $OrderBookCopyWith<$Res>  {
  factory $OrderBookCopyWith(OrderBook value, $Res Function(OrderBook) _then) = _$OrderBookCopyWithImpl;
@useResult
$Res call({
 List<Price> asks, List<Price> bids, int nonce, String symbol, int timestamp, String action, String marketType, String exchange
});




}
/// @nodoc
class _$OrderBookCopyWithImpl<$Res>
    implements $OrderBookCopyWith<$Res> {
  _$OrderBookCopyWithImpl(this._self, this._then);

  final OrderBook _self;
  final $Res Function(OrderBook) _then;

/// Create a copy of OrderBook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asks = null,Object? bids = null,Object? nonce = null,Object? symbol = null,Object? timestamp = null,Object? action = null,Object? marketType = null,Object? exchange = null,}) {
  return _then(_self.copyWith(
asks: null == asks ? _self.asks : asks // ignore: cast_nullable_to_non_nullable
as List<Price>,bids: null == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as List<Price>,nonce: null == nonce ? _self.nonce : nonce // ignore: cast_nullable_to_non_nullable
as int,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,marketType: null == marketType ? _self.marketType : marketType // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderBook].
extension OrderBookPatterns on OrderBook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderBook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderBook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderBook value)  $default,){
final _that = this;
switch (_that) {
case _OrderBook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderBook value)?  $default,){
final _that = this;
switch (_that) {
case _OrderBook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Price> asks,  List<Price> bids,  int nonce,  String symbol,  int timestamp,  String action,  String marketType,  String exchange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderBook() when $default != null:
return $default(_that.asks,_that.bids,_that.nonce,_that.symbol,_that.timestamp,_that.action,_that.marketType,_that.exchange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Price> asks,  List<Price> bids,  int nonce,  String symbol,  int timestamp,  String action,  String marketType,  String exchange)  $default,) {final _that = this;
switch (_that) {
case _OrderBook():
return $default(_that.asks,_that.bids,_that.nonce,_that.symbol,_that.timestamp,_that.action,_that.marketType,_that.exchange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Price> asks,  List<Price> bids,  int nonce,  String symbol,  int timestamp,  String action,  String marketType,  String exchange)?  $default,) {final _that = this;
switch (_that) {
case _OrderBook() when $default != null:
return $default(_that.asks,_that.bids,_that.nonce,_that.symbol,_that.timestamp,_that.action,_that.marketType,_that.exchange);case _:
  return null;

}
}

}

/// @nodoc


class _OrderBook implements OrderBook {
  const _OrderBook(final  List<Price> asks, final  List<Price> bids, this.nonce, this.symbol, this.timestamp, this.action, this.marketType, this.exchange): _asks = asks,_bids = bids;
  

 final  List<Price> _asks;
@override List<Price> get asks {
  if (_asks is EqualUnmodifiableListView) return _asks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_asks);
}

 final  List<Price> _bids;
@override List<Price> get bids {
  if (_bids is EqualUnmodifiableListView) return _bids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bids);
}

@override final  int nonce;
@override final  String symbol;
@override final  int timestamp;
@override final  String action;
@override final  String marketType;
@override final  String exchange;

/// Create a copy of OrderBook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderBookCopyWith<_OrderBook> get copyWith => __$OrderBookCopyWithImpl<_OrderBook>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderBook&&const DeepCollectionEquality().equals(other._asks, _asks)&&const DeepCollectionEquality().equals(other._bids, _bids)&&(identical(other.nonce, nonce) || other.nonce == nonce)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.action, action) || other.action == action)&&(identical(other.marketType, marketType) || other.marketType == marketType)&&(identical(other.exchange, exchange) || other.exchange == exchange));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_asks),const DeepCollectionEquality().hash(_bids),nonce,symbol,timestamp,action,marketType,exchange);

@override
String toString() {
  return 'OrderBook(asks: $asks, bids: $bids, nonce: $nonce, symbol: $symbol, timestamp: $timestamp, action: $action, marketType: $marketType, exchange: $exchange)';
}


}

/// @nodoc
abstract mixin class _$OrderBookCopyWith<$Res> implements $OrderBookCopyWith<$Res> {
  factory _$OrderBookCopyWith(_OrderBook value, $Res Function(_OrderBook) _then) = __$OrderBookCopyWithImpl;
@override @useResult
$Res call({
 List<Price> asks, List<Price> bids, int nonce, String symbol, int timestamp, String action, String marketType, String exchange
});




}
/// @nodoc
class __$OrderBookCopyWithImpl<$Res>
    implements _$OrderBookCopyWith<$Res> {
  __$OrderBookCopyWithImpl(this._self, this._then);

  final _OrderBook _self;
  final $Res Function(_OrderBook) _then;

/// Create a copy of OrderBook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asks = null,Object? bids = null,Object? nonce = null,Object? symbol = null,Object? timestamp = null,Object? action = null,Object? marketType = null,Object? exchange = null,}) {
  return _then(_OrderBook(
null == asks ? _self._asks : asks // ignore: cast_nullable_to_non_nullable
as List<Price>,null == bids ? _self._bids : bids // ignore: cast_nullable_to_non_nullable
as List<Price>,null == nonce ? _self.nonce : nonce // ignore: cast_nullable_to_non_nullable
as int,null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,null == marketType ? _self.marketType : marketType // ignore: cast_nullable_to_non_nullable
as String,null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
