// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'futures_ticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FuturesTickerModel {

 String get symbol; MarketCategory get category; double get last; double get open; double get high; double get low; double get bid; double get ask; double get change; double get percentage; double get baseVolume; double get quoteVolume; int get timestamp; double? get vwap; Map<String, dynamic>? get info;// 衍生品核心字段
@JsonKey(fromJson: _toDouble) double? get markPrice; double? get indexPrice; double? get fundingRate; int? get nextFundingTime; double? get estimatedSettlePrice;// 这里补全字段
 double? get openInterest; double? get openInterestAmount; double? get impliedFundingRate;
/// Create a copy of FuturesTickerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FuturesTickerModelCopyWith<FuturesTickerModel> get copyWith => _$FuturesTickerModelCopyWithImpl<FuturesTickerModel>(this as FuturesTickerModel, _$identity);

  /// Serializes this FuturesTickerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FuturesTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.category, category) || other.category == category)&&(identical(other.last, last) || other.last == last)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.bid, bid) || other.bid == bid)&&(identical(other.ask, ask) || other.ask == ask)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.baseVolume, baseVolume) || other.baseVolume == baseVolume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.vwap, vwap) || other.vwap == vwap)&&const DeepCollectionEquality().equals(other.info, info)&&(identical(other.markPrice, markPrice) || other.markPrice == markPrice)&&(identical(other.indexPrice, indexPrice) || other.indexPrice == indexPrice)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime)&&(identical(other.estimatedSettlePrice, estimatedSettlePrice) || other.estimatedSettlePrice == estimatedSettlePrice)&&(identical(other.openInterest, openInterest) || other.openInterest == openInterest)&&(identical(other.openInterestAmount, openInterestAmount) || other.openInterestAmount == openInterestAmount)&&(identical(other.impliedFundingRate, impliedFundingRate) || other.impliedFundingRate == impliedFundingRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,category,last,open,high,low,bid,ask,change,percentage,baseVolume,quoteVolume,timestamp,vwap,const DeepCollectionEquality().hash(info),markPrice,indexPrice,fundingRate,nextFundingTime,estimatedSettlePrice,openInterest,openInterestAmount,impliedFundingRate]);

@override
String toString() {
  return 'FuturesTickerModel(symbol: $symbol, category: $category, last: $last, open: $open, high: $high, low: $low, bid: $bid, ask: $ask, change: $change, percentage: $percentage, baseVolume: $baseVolume, quoteVolume: $quoteVolume, timestamp: $timestamp, vwap: $vwap, info: $info, markPrice: $markPrice, indexPrice: $indexPrice, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime, estimatedSettlePrice: $estimatedSettlePrice, openInterest: $openInterest, openInterestAmount: $openInterestAmount, impliedFundingRate: $impliedFundingRate)';
}


}

/// @nodoc
abstract mixin class $FuturesTickerModelCopyWith<$Res>  {
  factory $FuturesTickerModelCopyWith(FuturesTickerModel value, $Res Function(FuturesTickerModel) _then) = _$FuturesTickerModelCopyWithImpl;
@useResult
$Res call({
 String symbol, MarketCategory category, double last, double open, double high, double low, double bid, double ask, double change, double percentage, double baseVolume, double quoteVolume, int timestamp, double? vwap, Map<String, dynamic>? info,@JsonKey(fromJson: _toDouble) double? markPrice, double? indexPrice, double? fundingRate, int? nextFundingTime, double? estimatedSettlePrice, double? openInterest, double? openInterestAmount, double? impliedFundingRate
});




}
/// @nodoc
class _$FuturesTickerModelCopyWithImpl<$Res>
    implements $FuturesTickerModelCopyWith<$Res> {
  _$FuturesTickerModelCopyWithImpl(this._self, this._then);

  final FuturesTickerModel _self;
  final $Res Function(FuturesTickerModel) _then;

/// Create a copy of FuturesTickerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? category = null,Object? last = null,Object? open = null,Object? high = null,Object? low = null,Object? bid = null,Object? ask = null,Object? change = null,Object? percentage = null,Object? baseVolume = null,Object? quoteVolume = null,Object? timestamp = null,Object? vwap = freezed,Object? info = freezed,Object? markPrice = freezed,Object? indexPrice = freezed,Object? fundingRate = freezed,Object? nextFundingTime = freezed,Object? estimatedSettlePrice = freezed,Object? openInterest = freezed,Object? openInterestAmount = freezed,Object? impliedFundingRate = freezed,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as MarketCategory,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as double,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double,bid: null == bid ? _self.bid : bid // ignore: cast_nullable_to_non_nullable
as double,ask: null == ask ? _self.ask : ask // ignore: cast_nullable_to_non_nullable
as double,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,baseVolume: null == baseVolume ? _self.baseVolume : baseVolume // ignore: cast_nullable_to_non_nullable
as double,quoteVolume: null == quoteVolume ? _self.quoteVolume : quoteVolume // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,markPrice: freezed == markPrice ? _self.markPrice : markPrice // ignore: cast_nullable_to_non_nullable
as double?,indexPrice: freezed == indexPrice ? _self.indexPrice : indexPrice // ignore: cast_nullable_to_non_nullable
as double?,fundingRate: freezed == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double?,nextFundingTime: freezed == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int?,estimatedSettlePrice: freezed == estimatedSettlePrice ? _self.estimatedSettlePrice : estimatedSettlePrice // ignore: cast_nullable_to_non_nullable
as double?,openInterest: freezed == openInterest ? _self.openInterest : openInterest // ignore: cast_nullable_to_non_nullable
as double?,openInterestAmount: freezed == openInterestAmount ? _self.openInterestAmount : openInterestAmount // ignore: cast_nullable_to_non_nullable
as double?,impliedFundingRate: freezed == impliedFundingRate ? _self.impliedFundingRate : impliedFundingRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [FuturesTickerModel].
extension FuturesTickerModelPatterns on FuturesTickerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FuturesTickerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FuturesTickerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FuturesTickerModel value)  $default,){
final _that = this;
switch (_that) {
case _FuturesTickerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FuturesTickerModel value)?  $default,){
final _that = this;
switch (_that) {
case _FuturesTickerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double? vwap,  Map<String, dynamic>? info, @JsonKey(fromJson: _toDouble)  double? markPrice,  double? indexPrice,  double? fundingRate,  int? nextFundingTime,  double? estimatedSettlePrice,  double? openInterest,  double? openInterestAmount,  double? impliedFundingRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FuturesTickerModel() when $default != null:
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.vwap,_that.info,_that.markPrice,_that.indexPrice,_that.fundingRate,_that.nextFundingTime,_that.estimatedSettlePrice,_that.openInterest,_that.openInterestAmount,_that.impliedFundingRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double? vwap,  Map<String, dynamic>? info, @JsonKey(fromJson: _toDouble)  double? markPrice,  double? indexPrice,  double? fundingRate,  int? nextFundingTime,  double? estimatedSettlePrice,  double? openInterest,  double? openInterestAmount,  double? impliedFundingRate)  $default,) {final _that = this;
switch (_that) {
case _FuturesTickerModel():
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.vwap,_that.info,_that.markPrice,_that.indexPrice,_that.fundingRate,_that.nextFundingTime,_that.estimatedSettlePrice,_that.openInterest,_that.openInterestAmount,_that.impliedFundingRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double? vwap,  Map<String, dynamic>? info, @JsonKey(fromJson: _toDouble)  double? markPrice,  double? indexPrice,  double? fundingRate,  int? nextFundingTime,  double? estimatedSettlePrice,  double? openInterest,  double? openInterestAmount,  double? impliedFundingRate)?  $default,) {final _that = this;
switch (_that) {
case _FuturesTickerModel() when $default != null:
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.vwap,_that.info,_that.markPrice,_that.indexPrice,_that.fundingRate,_that.nextFundingTime,_that.estimatedSettlePrice,_that.openInterest,_that.openInterestAmount,_that.impliedFundingRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FuturesTickerModel extends FuturesTickerModel {
  const _FuturesTickerModel({required this.symbol, this.category = MarketCategory.perpetual, required this.last, required this.open, required this.high, required this.low, required this.bid, required this.ask, required this.change, required this.percentage, required this.baseVolume, required this.quoteVolume, required this.timestamp, this.vwap, final  Map<String, dynamic>? info, @JsonKey(fromJson: _toDouble) this.markPrice, this.indexPrice, this.fundingRate, this.nextFundingTime, this.estimatedSettlePrice, this.openInterest, this.openInterestAmount, this.impliedFundingRate}): _info = info,super._();
  factory _FuturesTickerModel.fromJson(Map<String, dynamic> json) => _$FuturesTickerModelFromJson(json);

@override final  String symbol;
@override@JsonKey() final  MarketCategory category;
@override final  double last;
@override final  double open;
@override final  double high;
@override final  double low;
@override final  double bid;
@override final  double ask;
@override final  double change;
@override final  double percentage;
@override final  double baseVolume;
@override final  double quoteVolume;
@override final  int timestamp;
@override final  double? vwap;
 final  Map<String, dynamic>? _info;
@override Map<String, dynamic>? get info {
  final value = _info;
  if (value == null) return null;
  if (_info is EqualUnmodifiableMapView) return _info;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// 衍生品核心字段
@override@JsonKey(fromJson: _toDouble) final  double? markPrice;
@override final  double? indexPrice;
@override final  double? fundingRate;
@override final  int? nextFundingTime;
@override final  double? estimatedSettlePrice;
// 这里补全字段
@override final  double? openInterest;
@override final  double? openInterestAmount;
@override final  double? impliedFundingRate;

/// Create a copy of FuturesTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FuturesTickerModelCopyWith<_FuturesTickerModel> get copyWith => __$FuturesTickerModelCopyWithImpl<_FuturesTickerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FuturesTickerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FuturesTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.category, category) || other.category == category)&&(identical(other.last, last) || other.last == last)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.bid, bid) || other.bid == bid)&&(identical(other.ask, ask) || other.ask == ask)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.baseVolume, baseVolume) || other.baseVolume == baseVolume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.vwap, vwap) || other.vwap == vwap)&&const DeepCollectionEquality().equals(other._info, _info)&&(identical(other.markPrice, markPrice) || other.markPrice == markPrice)&&(identical(other.indexPrice, indexPrice) || other.indexPrice == indexPrice)&&(identical(other.fundingRate, fundingRate) || other.fundingRate == fundingRate)&&(identical(other.nextFundingTime, nextFundingTime) || other.nextFundingTime == nextFundingTime)&&(identical(other.estimatedSettlePrice, estimatedSettlePrice) || other.estimatedSettlePrice == estimatedSettlePrice)&&(identical(other.openInterest, openInterest) || other.openInterest == openInterest)&&(identical(other.openInterestAmount, openInterestAmount) || other.openInterestAmount == openInterestAmount)&&(identical(other.impliedFundingRate, impliedFundingRate) || other.impliedFundingRate == impliedFundingRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,category,last,open,high,low,bid,ask,change,percentage,baseVolume,quoteVolume,timestamp,vwap,const DeepCollectionEquality().hash(_info),markPrice,indexPrice,fundingRate,nextFundingTime,estimatedSettlePrice,openInterest,openInterestAmount,impliedFundingRate]);

@override
String toString() {
  return 'FuturesTickerModel(symbol: $symbol, category: $category, last: $last, open: $open, high: $high, low: $low, bid: $bid, ask: $ask, change: $change, percentage: $percentage, baseVolume: $baseVolume, quoteVolume: $quoteVolume, timestamp: $timestamp, vwap: $vwap, info: $info, markPrice: $markPrice, indexPrice: $indexPrice, fundingRate: $fundingRate, nextFundingTime: $nextFundingTime, estimatedSettlePrice: $estimatedSettlePrice, openInterest: $openInterest, openInterestAmount: $openInterestAmount, impliedFundingRate: $impliedFundingRate)';
}


}

/// @nodoc
abstract mixin class _$FuturesTickerModelCopyWith<$Res> implements $FuturesTickerModelCopyWith<$Res> {
  factory _$FuturesTickerModelCopyWith(_FuturesTickerModel value, $Res Function(_FuturesTickerModel) _then) = __$FuturesTickerModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, MarketCategory category, double last, double open, double high, double low, double bid, double ask, double change, double percentage, double baseVolume, double quoteVolume, int timestamp, double? vwap, Map<String, dynamic>? info,@JsonKey(fromJson: _toDouble) double? markPrice, double? indexPrice, double? fundingRate, int? nextFundingTime, double? estimatedSettlePrice, double? openInterest, double? openInterestAmount, double? impliedFundingRate
});




}
/// @nodoc
class __$FuturesTickerModelCopyWithImpl<$Res>
    implements _$FuturesTickerModelCopyWith<$Res> {
  __$FuturesTickerModelCopyWithImpl(this._self, this._then);

  final _FuturesTickerModel _self;
  final $Res Function(_FuturesTickerModel) _then;

/// Create a copy of FuturesTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? category = null,Object? last = null,Object? open = null,Object? high = null,Object? low = null,Object? bid = null,Object? ask = null,Object? change = null,Object? percentage = null,Object? baseVolume = null,Object? quoteVolume = null,Object? timestamp = null,Object? vwap = freezed,Object? info = freezed,Object? markPrice = freezed,Object? indexPrice = freezed,Object? fundingRate = freezed,Object? nextFundingTime = freezed,Object? estimatedSettlePrice = freezed,Object? openInterest = freezed,Object? openInterestAmount = freezed,Object? impliedFundingRate = freezed,}) {
  return _then(_FuturesTickerModel(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as MarketCategory,last: null == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as double,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double,bid: null == bid ? _self.bid : bid // ignore: cast_nullable_to_non_nullable
as double,ask: null == ask ? _self.ask : ask // ignore: cast_nullable_to_non_nullable
as double,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,baseVolume: null == baseVolume ? _self.baseVolume : baseVolume // ignore: cast_nullable_to_non_nullable
as double,quoteVolume: null == quoteVolume ? _self.quoteVolume : quoteVolume // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,info: freezed == info ? _self._info : info // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,markPrice: freezed == markPrice ? _self.markPrice : markPrice // ignore: cast_nullable_to_non_nullable
as double?,indexPrice: freezed == indexPrice ? _self.indexPrice : indexPrice // ignore: cast_nullable_to_non_nullable
as double?,fundingRate: freezed == fundingRate ? _self.fundingRate : fundingRate // ignore: cast_nullable_to_non_nullable
as double?,nextFundingTime: freezed == nextFundingTime ? _self.nextFundingTime : nextFundingTime // ignore: cast_nullable_to_non_nullable
as int?,estimatedSettlePrice: freezed == estimatedSettlePrice ? _self.estimatedSettlePrice : estimatedSettlePrice // ignore: cast_nullable_to_non_nullable
as double?,openInterest: freezed == openInterest ? _self.openInterest : openInterest // ignore: cast_nullable_to_non_nullable
as double?,openInterestAmount: freezed == openInterestAmount ? _self.openInterestAmount : openInterestAmount // ignore: cast_nullable_to_non_nullable
as double?,impliedFundingRate: freezed == impliedFundingRate ? _self.impliedFundingRate : impliedFundingRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
