// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContractMarketModel {

 String get symbol; String get base; String get quote; double? get fundingRate;// 资金费率
 int? get nextFundingTime;// 下次资金费时间
 String get exchange; bool get linear; bool get inverse; double? get minLeverage;// 最小杠杆倍数
 double? get maxLeverage;// 最大杠杆倍数
 String? get contractType;
/// Create a copy of ContractMarketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractMarketModelCopyWith<ContractMarketModel> get copyWith => _$ContractMarketModelCopyWithImpl<ContractMarketModel>(this as ContractMarketModel, _$identity);

  /// Serializes this ContractMarketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractMarketModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.base, base) || other.base == base)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.linear, linear) || other.linear == linear)&&(identical(other.inverse, inverse) || other.inverse == inverse)&&(identical(other.minLeverage, minLeverage) || other.minLeverage == minLeverage)&&(identical(other.maxLeverage, maxLeverage) || other.maxLeverage == maxLeverage)&&(identical(other.contractType, contractType) || other.contractType == contractType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,base,quote,fundingRate,nextFundingTime,exchange,linear,inverse,minLeverage,maxLeverage,contractType);

@override
String toString() {
  return 'ContractMarketModel(symbol: $symbol, base: $base, quote: $quote, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime, exchange: $exchange, linear: $linear, inverse: $inverse, minLeverage: $minLeverage, maxLeverage: $maxLeverage, contractType: $contractType)';
}


}

/// @nodoc
abstract mixin class $ContractMarketModelCopyWith<$Res>  {
  factory $ContractMarketModelCopyWith(ContractMarketModel value, $Res Function(ContractMarketModel) _then) = _$ContractMarketModelCopyWithImpl;
@useResult
$Res call({
 String symbol, String base, String quote, double? fundingRate, int? nextFundingTime, String exchange, bool linear, bool inverse, double? minLeverage, double? maxLeverage, String? contractType
});




}
/// @nodoc
class _$ContractMarketModelCopyWithImpl<$Res>
    implements $ContractMarketModelCopyWith<$Res> {
  _$ContractMarketModelCopyWithImpl(this._self, this._then);

  final ContractMarketModel _self;
  final $Res Function(ContractMarketModel) _then;

/// Create a copy of ContractMarketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? base = null,Object? quote = null,Object? fundingRate = freezed,Object? nextFundingTime = freezed,Object? exchange = null,Object? linear = null,Object? inverse = null,Object? minLeverage = freezed,Object? maxLeverage = freezed,Object? contractType = freezed,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,quote: null == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String,fundingRate: freezed == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double?,nextFundingTime: freezed == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int?,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,linear: null == linear ? _self.linear : linear // ignore: cast_nullable_to_non_nullable
as bool,inverse: null == inverse ? _self.inverse : inverse // ignore: cast_nullable_to_non_nullable
as bool,minLeverage: freezed == minLeverage ? _self.minLeverage : minLeverage // ignore: cast_nullable_to_non_nullable
as double?,maxLeverage: freezed == maxLeverage ? _self.maxLeverage : maxLeverage // ignore: cast_nullable_to_non_nullable
as double?,contractType: freezed == contractType ? _self.contractType : contractType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContractMarketModel].
extension ContractMarketModelPatterns on ContractMarketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContractMarketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContractMarketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContractMarketModel value)  $default,){
final _that = this;
switch (_that) {
case _ContractMarketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContractMarketModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContractMarketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String base,  String quote,  double? fundingRate,  int? nextFundingTime,  String exchange,  bool linear,  bool inverse,  double? minLeverage,  double? maxLeverage,  String? contractType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContractMarketModel() when $default != null:
return $default(_that.symbol,_that.base,_that.quote,_that.fundingRate,_that.nextFundingTime,_that.exchange,_that.linear,_that.inverse,_that.minLeverage,_that.maxLeverage,_that.contractType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String base,  String quote,  double? fundingRate,  int? nextFundingTime,  String exchange,  bool linear,  bool inverse,  double? minLeverage,  double? maxLeverage,  String? contractType)  $default,) {final _that = this;
switch (_that) {
case _ContractMarketModel():
return $default(_that.symbol,_that.base,_that.quote,_that.fundingRate,_that.nextFundingTime,_that.exchange,_that.linear,_that.inverse,_that.minLeverage,_that.maxLeverage,_that.contractType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String base,  String quote,  double? fundingRate,  int? nextFundingTime,  String exchange,  bool linear,  bool inverse,  double? minLeverage,  double? maxLeverage,  String? contractType)?  $default,) {final _that = this;
switch (_that) {
case _ContractMarketModel() when $default != null:
return $default(_that.symbol,_that.base,_that.quote,_that.fundingRate,_that.nextFundingTime,_that.exchange,_that.linear,_that.inverse,_that.minLeverage,_that.maxLeverage,_that.contractType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContractMarketModel extends ContractMarketModel {
  const _ContractMarketModel({required this.symbol, required this.base, required this.quote, this.fundingRate, this.nextFundingTime = 0, required this.exchange, this.linear = false, this.inverse = false, this.minLeverage, this.maxLeverage, this.contractType = ''}): super._();
  factory _ContractMarketModel.fromJson(Map<String, dynamic> json) => _$ContractMarketModelFromJson(json);

@override final  String symbol;
@override final  String base;
@override final  String quote;
@override final  double? fundingRate;
// 资金费率
@override@JsonKey() final  int? nextFundingTime;
// 下次资金费时间
@override final  String exchange;
@override@JsonKey() final  bool linear;
@override@JsonKey() final  bool inverse;
@override final  double? minLeverage;
// 最小杠杆倍数
@override final  double? maxLeverage;
// 最大杠杆倍数
@override@JsonKey() final  String? contractType;

/// Create a copy of ContractMarketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractMarketModelCopyWith<_ContractMarketModel> get copyWith => __$ContractMarketModelCopyWithImpl<_ContractMarketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContractMarketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContractMarketModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.base, base) || other.base == base)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.linear, linear) || other.linear == linear)&&(identical(other.inverse, inverse) || other.inverse == inverse)&&(identical(other.minLeverage, minLeverage) || other.minLeverage == minLeverage)&&(identical(other.maxLeverage, maxLeverage) || other.maxLeverage == maxLeverage)&&(identical(other.contractType, contractType) || other.contractType == contractType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,base,quote,fundingRate,nextFundingTime,exchange,linear,inverse,minLeverage,maxLeverage,contractType);

@override
String toString() {
  return 'ContractMarketModel(symbol: $symbol, base: $base, quote: $quote, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime, exchange: $exchange, linear: $linear, inverse: $inverse, minLeverage: $minLeverage, maxLeverage: $maxLeverage, contractType: $contractType)';
}


}

/// @nodoc
abstract mixin class _$ContractMarketModelCopyWith<$Res> implements $ContractMarketModelCopyWith<$Res> {
  factory _$ContractMarketModelCopyWith(_ContractMarketModel value, $Res Function(_ContractMarketModel) _then) = __$ContractMarketModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String base, String quote, double? fundingRate, int? nextFundingTime, String exchange, bool linear, bool inverse, double? minLeverage, double? maxLeverage, String? contractType
});




}
/// @nodoc
class __$ContractMarketModelCopyWithImpl<$Res>
    implements _$ContractMarketModelCopyWith<$Res> {
  __$ContractMarketModelCopyWithImpl(this._self, this._then);

  final _ContractMarketModel _self;
  final $Res Function(_ContractMarketModel) _then;

/// Create a copy of ContractMarketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? base = null,Object? quote = null,Object? fundingRate = freezed,Object? nextFundingTime = freezed,Object? exchange = null,Object? linear = null,Object? inverse = null,Object? minLeverage = freezed,Object? maxLeverage = freezed,Object? contractType = freezed,}) {
  return _then(_ContractMarketModel(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,quote: null == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String,fundingRate: freezed == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double?,nextFundingTime: freezed == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int?,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,linear: null == linear ? _self.linear : linear // ignore: cast_nullable_to_non_nullable
as bool,inverse: null == inverse ? _self.inverse : inverse // ignore: cast_nullable_to_non_nullable
as bool,minLeverage: freezed == minLeverage ? _self.minLeverage : minLeverage // ignore: cast_nullable_to_non_nullable
as double?,maxLeverage: freezed == maxLeverage ? _self.maxLeverage : maxLeverage // ignore: cast_nullable_to_non_nullable
as double?,contractType: freezed == contractType ? _self.contractType : contractType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
