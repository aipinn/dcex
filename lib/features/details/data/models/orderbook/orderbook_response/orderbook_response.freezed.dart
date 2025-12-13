// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderbook_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderbookResponse {

 OrderBook get result;
/// Create a copy of OrderbookResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderbookResponseCopyWith<OrderbookResponse> get copyWith => _$OrderbookResponseCopyWithImpl<OrderbookResponse>(this as OrderbookResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderbookResponse&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'OrderbookResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class $OrderbookResponseCopyWith<$Res>  {
  factory $OrderbookResponseCopyWith(OrderbookResponse value, $Res Function(OrderbookResponse) _then) = _$OrderbookResponseCopyWithImpl;
@useResult
$Res call({
 OrderBook result
});


$OrderBookCopyWith<$Res> get result;

}
/// @nodoc
class _$OrderbookResponseCopyWithImpl<$Res>
    implements $OrderbookResponseCopyWith<$Res> {
  _$OrderbookResponseCopyWithImpl(this._self, this._then);

  final OrderbookResponse _self;
  final $Res Function(OrderbookResponse) _then;

/// Create a copy of OrderbookResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as OrderBook,
  ));
}
/// Create a copy of OrderbookResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderBookCopyWith<$Res> get result {
  
  return $OrderBookCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderbookResponse].
extension OrderbookResponsePatterns on OrderbookResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderbookResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderbookResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderbookResponse value)  $default,){
final _that = this;
switch (_that) {
case _OrderbookResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderbookResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OrderbookResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderBook result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderbookResponse() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderBook result)  $default,) {final _that = this;
switch (_that) {
case _OrderbookResponse():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderBook result)?  $default,) {final _that = this;
switch (_that) {
case _OrderbookResponse() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _OrderbookResponse implements OrderbookResponse {
  const _OrderbookResponse(this.result);
  

@override final  OrderBook result;

/// Create a copy of OrderbookResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderbookResponseCopyWith<_OrderbookResponse> get copyWith => __$OrderbookResponseCopyWithImpl<_OrderbookResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderbookResponse&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'OrderbookResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class _$OrderbookResponseCopyWith<$Res> implements $OrderbookResponseCopyWith<$Res> {
  factory _$OrderbookResponseCopyWith(_OrderbookResponse value, $Res Function(_OrderbookResponse) _then) = __$OrderbookResponseCopyWithImpl;
@override @useResult
$Res call({
 OrderBook result
});


@override $OrderBookCopyWith<$Res> get result;

}
/// @nodoc
class __$OrderbookResponseCopyWithImpl<$Res>
    implements _$OrderbookResponseCopyWith<$Res> {
  __$OrderbookResponseCopyWithImpl(this._self, this._then);

  final _OrderbookResponse _self;
  final $Res Function(_OrderbookResponse) _then;

/// Create a copy of OrderbookResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_OrderbookResponse(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as OrderBook,
  ));
}

/// Create a copy of OrderbookResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderBookCopyWith<$Res> get result {
  
  return $OrderBookCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
