// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funding_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FundingRateModel {

 String get symbol; String get exchange; double? get fundingRate; int? get nextFundingTime;
/// Create a copy of FundingRateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundingRateModelCopyWith<FundingRateModel> get copyWith => _$FundingRateModelCopyWithImpl<FundingRateModel>(this as FundingRateModel, _$identity);

  /// Serializes this FundingRateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundingRateModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,fundingRate,nextFundingTime);

@override
String toString() {
  return 'FundingRateModel(symbol: $symbol, exchange: $exchange, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime)';
}


}

/// @nodoc
abstract mixin class $FundingRateModelCopyWith<$Res>  {
  factory $FundingRateModelCopyWith(FundingRateModel value, $Res Function(FundingRateModel) _then) = _$FundingRateModelCopyWithImpl;
@useResult
$Res call({
 String symbol, String exchange, double? fundingRate, int? nextFundingTime
});




}
/// @nodoc
class _$FundingRateModelCopyWithImpl<$Res>
    implements $FundingRateModelCopyWith<$Res> {
  _$FundingRateModelCopyWithImpl(this._self, this._then);

  final FundingRateModel _self;
  final $Res Function(FundingRateModel) _then;

/// Create a copy of FundingRateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? exchange = null,Object? fundingRate = freezed,Object? nextFundingTime = freezed,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,fundingRate: freezed == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double?,nextFundingTime: freezed == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundingRateModel].
extension FundingRateModelPatterns on FundingRateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundingRateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundingRateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundingRateModel value)  $default,){
final _that = this;
switch (_that) {
case _FundingRateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundingRateModel value)?  $default,){
final _that = this;
switch (_that) {
case _FundingRateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String exchange,  double? fundingRate,  int? nextFundingTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundingRateModel() when $default != null:
return $default(_that.symbol,_that.exchange,_that.fundingRate,_that.nextFundingTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String exchange,  double? fundingRate,  int? nextFundingTime)  $default,) {final _that = this;
switch (_that) {
case _FundingRateModel():
return $default(_that.symbol,_that.exchange,_that.fundingRate,_that.nextFundingTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String exchange,  double? fundingRate,  int? nextFundingTime)?  $default,) {final _that = this;
switch (_that) {
case _FundingRateModel() when $default != null:
return $default(_that.symbol,_that.exchange,_that.fundingRate,_that.nextFundingTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundingRateModel extends FundingRateModel {
  const _FundingRateModel({required this.symbol, required this.exchange, this.fundingRate, this.nextFundingTime}): super._();
  factory _FundingRateModel.fromJson(Map<String, dynamic> json) => _$FundingRateModelFromJson(json);

@override final  String symbol;
@override final  String exchange;
@override final  double? fundingRate;
@override final  int? nextFundingTime;

/// Create a copy of FundingRateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundingRateModelCopyWith<_FundingRateModel> get copyWith => __$FundingRateModelCopyWithImpl<_FundingRateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundingRateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundingRateModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,exchange,fundingRate,nextFundingTime);

@override
String toString() {
  return 'FundingRateModel(symbol: $symbol, exchange: $exchange, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime)';
}


}

/// @nodoc
abstract mixin class _$FundingRateModelCopyWith<$Res> implements $FundingRateModelCopyWith<$Res> {
  factory _$FundingRateModelCopyWith(_FundingRateModel value, $Res Function(_FundingRateModel) _then) = __$FundingRateModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String exchange, double? fundingRate, int? nextFundingTime
});




}
/// @nodoc
class __$FundingRateModelCopyWithImpl<$Res>
    implements _$FundingRateModelCopyWith<$Res> {
  __$FundingRateModelCopyWithImpl(this._self, this._then);

  final _FundingRateModel _self;
  final $Res Function(_FundingRateModel) _then;

/// Create a copy of FundingRateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? exchange = null,Object? fundingRate = freezed,Object? nextFundingTime = freezed,}) {
  return _then(_FundingRateModel(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,fundingRate: freezed == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double?,nextFundingTime: freezed == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
