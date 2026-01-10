// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_ticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContractTickerModel {

 String get symbol; String get exchange; double get fundingRate; int get nextFundingTime; double get last; double get high; double get low; double get open; double get change; double? get volume24h; int? get timestamp;
/// Create a copy of ContractTickerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractTickerModelCopyWith<ContractTickerModel> get copyWith => _$ContractTickerModelCopyWithImpl<ContractTickerModel>(this as ContractTickerModel, _$identity);

  /// Serializes this ContractTickerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime)&&(identical(other.last, last) || other.last == last)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.open, open) || other.open == open)&&(identical(other.change, change) || other.change == change)&&(identical(other.volume24h, volume24h) || other.volume24h == volume24h)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,fundingRate,nextFundingTime,last,high,low,open,change,volume24h,timestamp);

@override
String toString() {
  return 'ContractTickerModel(symbol: $symbol, exchange: $exchange, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime, last: $last, high: $high, low: $low, open: $open, change: $change, volume24h: $volume24h, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ContractTickerModelCopyWith<$Res>  {
  factory $ContractTickerModelCopyWith(ContractTickerModel value, $Res Function(ContractTickerModel) _then) = _$ContractTickerModelCopyWithImpl;
@useResult
$Res call({
 String symbol, String exchange, double fundingRate, int nextFundingTime, double last, double high, double low, double open, double change, double? volume24h, int? timestamp
});




}
/// @nodoc
class _$ContractTickerModelCopyWithImpl<$Res>
    implements $ContractTickerModelCopyWith<$Res> {
  _$ContractTickerModelCopyWithImpl(this._self, this._then);

  final ContractTickerModel _self;
  final $Res Function(ContractTickerModel) _then;

/// Create a copy of ContractTickerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? exchange = null,Object? fundingRate = null,Object? nextFundingTime = null,Object? last = null,Object? high = null,Object? low = null,Object? open = null,Object? change = null,Object? volume24h = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,fundingRate: null == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double,nextFundingTime: null == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as double,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,volume24h: freezed == volume24h ? _self.volume24h : volume24h // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContractTickerModel].
extension ContractTickerModelPatterns on ContractTickerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContractTickerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContractTickerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContractTickerModel value)  $default,){
final _that = this;
switch (_that) {
case _ContractTickerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContractTickerModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContractTickerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String exchange,  double fundingRate,  int nextFundingTime,  double last,  double high,  double low,  double open,  double change,  double? volume24h,  int? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContractTickerModel() when $default != null:
return $default(_that.symbol,_that.exchange,_that.fundingRate,_that.nextFundingTime,_that.last,_that.high,_that.low,_that.open,_that.change,_that.volume24h,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String exchange,  double fundingRate,  int nextFundingTime,  double last,  double high,  double low,  double open,  double change,  double? volume24h,  int? timestamp)  $default,) {final _that = this;
switch (_that) {
case _ContractTickerModel():
return $default(_that.symbol,_that.exchange,_that.fundingRate,_that.nextFundingTime,_that.last,_that.high,_that.low,_that.open,_that.change,_that.volume24h,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String exchange,  double fundingRate,  int nextFundingTime,  double last,  double high,  double low,  double open,  double change,  double? volume24h,  int? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ContractTickerModel() when $default != null:
return $default(_that.symbol,_that.exchange,_that.fundingRate,_that.nextFundingTime,_that.last,_that.high,_that.low,_that.open,_that.change,_that.volume24h,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContractTickerModel implements ContractTickerModel {
  const _ContractTickerModel({required this.symbol, required this.exchange, this.fundingRate = 0, this.nextFundingTime = 0, this.last = 0, this.high = 0, this.low = 0, this.open = 0, this.change = 0, this.volume24h, this.timestamp});
  factory _ContractTickerModel.fromJson(Map<String, dynamic> json) => _$ContractTickerModelFromJson(json);

@override final  String symbol;
@override final  String exchange;
@override@JsonKey() final  double fundingRate;
@override@JsonKey() final  int nextFundingTime;
@override@JsonKey() final  double last;
@override@JsonKey() final  double high;
@override@JsonKey() final  double low;
@override@JsonKey() final  double open;
@override@JsonKey() final  double change;
@override final  double? volume24h;
@override final  int? timestamp;

/// Create a copy of ContractTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractTickerModelCopyWith<_ContractTickerModel> get copyWith => __$ContractTickerModelCopyWithImpl<_ContractTickerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContractTickerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContractTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime)&&(identical(other.last, last) || other.last == last)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.open, open) || other.open == open)&&(identical(other.change, change) || other.change == change)&&(identical(other.volume24h, volume24h) || other.volume24h == volume24h)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,fundingRate,nextFundingTime,last,high,low,open,change,volume24h,timestamp);

@override
String toString() {
  return 'ContractTickerModel(symbol: $symbol, exchange: $exchange, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime, last: $last, high: $high, low: $low, open: $open, change: $change, volume24h: $volume24h, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ContractTickerModelCopyWith<$Res> implements $ContractTickerModelCopyWith<$Res> {
  factory _$ContractTickerModelCopyWith(_ContractTickerModel value, $Res Function(_ContractTickerModel) _then) = __$ContractTickerModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String exchange, double fundingRate, int nextFundingTime, double last, double high, double low, double open, double change, double? volume24h, int? timestamp
});




}
/// @nodoc
class __$ContractTickerModelCopyWithImpl<$Res>
    implements _$ContractTickerModelCopyWith<$Res> {
  __$ContractTickerModelCopyWithImpl(this._self, this._then);

  final _ContractTickerModel _self;
  final $Res Function(_ContractTickerModel) _then;

/// Create a copy of ContractTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? exchange = null,Object? fundingRate = null,Object? nextFundingTime = null,Object? last = null,Object? high = null,Object? low = null,Object? open = null,Object? change = null,Object? volume24h = freezed,Object? timestamp = freezed,}) {
  return _then(_ContractTickerModel(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,fundingRate: null == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double,nextFundingTime: null == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as double,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,volume24h: freezed == volume24h ? _self.volume24h : volume24h // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
