// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pair_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PairSummary {

 String get symbol; Price get price; double get volume; double get volumeQuote; int get timestamp;
/// Create a copy of PairSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PairSummaryCopyWith<PairSummary> get copyWith => _$PairSummaryCopyWithImpl<PairSummary>(this as PairSummary, _$identity);

  /// Serializes this PairSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PairSummary&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.volumeQuote, volumeQuote) || other.volumeQuote == volumeQuote)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,price,volume,volumeQuote,timestamp);

@override
String toString() {
  return 'PairSummary(symbol: $symbol, price: $price, volume: $volume, volumeQuote: $volumeQuote, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $PairSummaryCopyWith<$Res>  {
  factory $PairSummaryCopyWith(PairSummary value, $Res Function(PairSummary) _then) = _$PairSummaryCopyWithImpl;
@useResult
$Res call({
 String symbol, Price price, double volume, double volumeQuote, int timestamp
});


$PriceCopyWith<$Res> get price;

}
/// @nodoc
class _$PairSummaryCopyWithImpl<$Res>
    implements $PairSummaryCopyWith<$Res> {
  _$PairSummaryCopyWithImpl(this._self, this._then);

  final PairSummary _self;
  final $Res Function(PairSummary) _then;

/// Create a copy of PairSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? price = null,Object? volume = null,Object? volumeQuote = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,volumeQuote: null == volumeQuote ? _self.volumeQuote : volumeQuote // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PairSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// Adds pattern-matching-related methods to [PairSummary].
extension PairSummaryPatterns on PairSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PairSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PairSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PairSummary value)  $default,){
final _that = this;
switch (_that) {
case _PairSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PairSummary value)?  $default,){
final _that = this;
switch (_that) {
case _PairSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  Price price,  double volume,  double volumeQuote,  int timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PairSummary() when $default != null:
return $default(_that.symbol,_that.price,_that.volume,_that.volumeQuote,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  Price price,  double volume,  double volumeQuote,  int timestamp)  $default,) {final _that = this;
switch (_that) {
case _PairSummary():
return $default(_that.symbol,_that.price,_that.volume,_that.volumeQuote,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  Price price,  double volume,  double volumeQuote,  int timestamp)?  $default,) {final _that = this;
switch (_that) {
case _PairSummary() when $default != null:
return $default(_that.symbol,_that.price,_that.volume,_that.volumeQuote,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PairSummary implements PairSummary {
  const _PairSummary({required this.symbol, required this.price, required this.volume, required this.volumeQuote, required this.timestamp});
  factory _PairSummary.fromJson(Map<String, dynamic> json) => _$PairSummaryFromJson(json);

@override final  String symbol;
@override final  Price price;
@override final  double volume;
@override final  double volumeQuote;
@override final  int timestamp;

/// Create a copy of PairSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PairSummaryCopyWith<_PairSummary> get copyWith => __$PairSummaryCopyWithImpl<_PairSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PairSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PairSummary&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.volumeQuote, volumeQuote) || other.volumeQuote == volumeQuote)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,price,volume,volumeQuote,timestamp);

@override
String toString() {
  return 'PairSummary(symbol: $symbol, price: $price, volume: $volume, volumeQuote: $volumeQuote, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$PairSummaryCopyWith<$Res> implements $PairSummaryCopyWith<$Res> {
  factory _$PairSummaryCopyWith(_PairSummary value, $Res Function(_PairSummary) _then) = __$PairSummaryCopyWithImpl;
@override @useResult
$Res call({
 String symbol, Price price, double volume, double volumeQuote, int timestamp
});


@override $PriceCopyWith<$Res> get price;

}
/// @nodoc
class __$PairSummaryCopyWithImpl<$Res>
    implements _$PairSummaryCopyWith<$Res> {
  __$PairSummaryCopyWithImpl(this._self, this._then);

  final _PairSummary _self;
  final $Res Function(_PairSummary) _then;

/// Create a copy of PairSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? price = null,Object? volume = null,Object? volumeQuote = null,Object? timestamp = null,}) {
  return _then(_PairSummary(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,volumeQuote: null == volumeQuote ? _self.volumeQuote : volumeQuote // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PairSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}

// dart format on
