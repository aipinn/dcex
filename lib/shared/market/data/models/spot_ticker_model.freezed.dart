// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_ticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpotTickerModel {

// 核心字段 - 几乎所有现货 ticker 都会有
 String get symbol; MarketCategory get category; double get last;// 最新成交价
 double get open;// 24h 开盘价
 double get high;// 24h 最高
 double get low;// 24h 最低
 double get bid;// 最优买价
 double get ask;// 最优卖价
 double get change;// 价格变化绝对值
 double get percentage;// 涨跌幅百分比
 double get baseVolume;// 基础货币成交量
 double get quoteVolume;// 计价货币成交量
 int get timestamp;// 数据时间戳
// 常用但非必须字段
 double? get vwap;// 加权平均价
 double? get bidVolume;// 买单挂单量
 double? get askVolume;// 卖单挂单量
 double? get previousClose;// 前一交易日收盘价（部分交易所）
// 原始数据保留（调试/扩展用）
 Map<String, dynamic>? get info;
/// Create a copy of SpotTickerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotTickerModelCopyWith<SpotTickerModel> get copyWith => _$SpotTickerModelCopyWithImpl<SpotTickerModel>(this as SpotTickerModel, _$identity);

  /// Serializes this SpotTickerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.category, category) || other.category == category)&&(identical(other.last, last) || other.last == last)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.bid, bid) || other.bid == bid)&&(identical(other.ask, ask) || other.ask == ask)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.baseVolume, baseVolume) || other.baseVolume == baseVolume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.vwap, vwap) || other.vwap == vwap)&&(identical(other.bidVolume, bidVolume) || other.bidVolume == bidVolume)&&(identical(other.askVolume, askVolume) || other.askVolume == askVolume)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&const DeepCollectionEquality().equals(other.info, info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,category,last,open,high,low,bid,ask,change,percentage,baseVolume,quoteVolume,timestamp,vwap,bidVolume,askVolume,previousClose,const DeepCollectionEquality().hash(info));

@override
String toString() {
  return 'SpotTickerModel(symbol: $symbol, category: $category, last: $last, open: $open, high: $high, low: $low, bid: $bid, ask: $ask, change: $change, percentage: $percentage, baseVolume: $baseVolume, quoteVolume: $quoteVolume, timestamp: $timestamp, vwap: $vwap, bidVolume: $bidVolume, askVolume: $askVolume, previousClose: $previousClose, info: $info)';
}


}

/// @nodoc
abstract mixin class $SpotTickerModelCopyWith<$Res>  {
  factory $SpotTickerModelCopyWith(SpotTickerModel value, $Res Function(SpotTickerModel) _then) = _$SpotTickerModelCopyWithImpl;
@useResult
$Res call({
 String symbol, MarketCategory category, double last, double open, double high, double low, double bid, double ask, double change, double percentage, double baseVolume, double quoteVolume, int timestamp, double? vwap, double? bidVolume, double? askVolume, double? previousClose, Map<String, dynamic>? info
});




}
/// @nodoc
class _$SpotTickerModelCopyWithImpl<$Res>
    implements $SpotTickerModelCopyWith<$Res> {
  _$SpotTickerModelCopyWithImpl(this._self, this._then);

  final SpotTickerModel _self;
  final $Res Function(SpotTickerModel) _then;

/// Create a copy of SpotTickerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? category = null,Object? last = null,Object? open = null,Object? high = null,Object? low = null,Object? bid = null,Object? ask = null,Object? change = null,Object? percentage = null,Object? baseVolume = null,Object? quoteVolume = null,Object? timestamp = null,Object? vwap = freezed,Object? bidVolume = freezed,Object? askVolume = freezed,Object? previousClose = freezed,Object? info = freezed,}) {
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
as double?,bidVolume: freezed == bidVolume ? _self.bidVolume : bidVolume // ignore: cast_nullable_to_non_nullable
as double?,askVolume: freezed == askVolume ? _self.askVolume : askVolume // ignore: cast_nullable_to_non_nullable
as double?,previousClose: freezed == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotTickerModel].
extension SpotTickerModelPatterns on SpotTickerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotTickerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotTickerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotTickerModel value)  $default,){
final _that = this;
switch (_that) {
case _SpotTickerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotTickerModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpotTickerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double? vwap,  double? bidVolume,  double? askVolume,  double? previousClose,  Map<String, dynamic>? info)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotTickerModel() when $default != null:
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.vwap,_that.bidVolume,_that.askVolume,_that.previousClose,_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double? vwap,  double? bidVolume,  double? askVolume,  double? previousClose,  Map<String, dynamic>? info)  $default,) {final _that = this;
switch (_that) {
case _SpotTickerModel():
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.vwap,_that.bidVolume,_that.askVolume,_that.previousClose,_that.info);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double? vwap,  double? bidVolume,  double? askVolume,  double? previousClose,  Map<String, dynamic>? info)?  $default,) {final _that = this;
switch (_that) {
case _SpotTickerModel() when $default != null:
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.vwap,_that.bidVolume,_that.askVolume,_that.previousClose,_that.info);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotTickerModel extends SpotTickerModel {
  const _SpotTickerModel({required this.symbol, this.category = MarketCategory.spot, required this.last, required this.open, required this.high, required this.low, required this.bid, required this.ask, required this.change, required this.percentage, required this.baseVolume, required this.quoteVolume, required this.timestamp, this.vwap, this.bidVolume, this.askVolume, this.previousClose, final  Map<String, dynamic>? info}): _info = info,super._();
  factory _SpotTickerModel.fromJson(Map<String, dynamic> json) => _$SpotTickerModelFromJson(json);

// 核心字段 - 几乎所有现货 ticker 都会有
@override final  String symbol;
@override@JsonKey() final  MarketCategory category;
@override final  double last;
// 最新成交价
@override final  double open;
// 24h 开盘价
@override final  double high;
// 24h 最高
@override final  double low;
// 24h 最低
@override final  double bid;
// 最优买价
@override final  double ask;
// 最优卖价
@override final  double change;
// 价格变化绝对值
@override final  double percentage;
// 涨跌幅百分比
@override final  double baseVolume;
// 基础货币成交量
@override final  double quoteVolume;
// 计价货币成交量
@override final  int timestamp;
// 数据时间戳
// 常用但非必须字段
@override final  double? vwap;
// 加权平均价
@override final  double? bidVolume;
// 买单挂单量
@override final  double? askVolume;
// 卖单挂单量
@override final  double? previousClose;
// 前一交易日收盘价（部分交易所）
// 原始数据保留（调试/扩展用）
 final  Map<String, dynamic>? _info;
// 前一交易日收盘价（部分交易所）
// 原始数据保留（调试/扩展用）
@override Map<String, dynamic>? get info {
  final value = _info;
  if (value == null) return null;
  if (_info is EqualUnmodifiableMapView) return _info;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SpotTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotTickerModelCopyWith<_SpotTickerModel> get copyWith => __$SpotTickerModelCopyWithImpl<_SpotTickerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotTickerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.category, category) || other.category == category)&&(identical(other.last, last) || other.last == last)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.bid, bid) || other.bid == bid)&&(identical(other.ask, ask) || other.ask == ask)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.baseVolume, baseVolume) || other.baseVolume == baseVolume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.vwap, vwap) || other.vwap == vwap)&&(identical(other.bidVolume, bidVolume) || other.bidVolume == bidVolume)&&(identical(other.askVolume, askVolume) || other.askVolume == askVolume)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&const DeepCollectionEquality().equals(other._info, _info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,category,last,open,high,low,bid,ask,change,percentage,baseVolume,quoteVolume,timestamp,vwap,bidVolume,askVolume,previousClose,const DeepCollectionEquality().hash(_info));

@override
String toString() {
  return 'SpotTickerModel(symbol: $symbol, category: $category, last: $last, open: $open, high: $high, low: $low, bid: $bid, ask: $ask, change: $change, percentage: $percentage, baseVolume: $baseVolume, quoteVolume: $quoteVolume, timestamp: $timestamp, vwap: $vwap, bidVolume: $bidVolume, askVolume: $askVolume, previousClose: $previousClose, info: $info)';
}


}

/// @nodoc
abstract mixin class _$SpotTickerModelCopyWith<$Res> implements $SpotTickerModelCopyWith<$Res> {
  factory _$SpotTickerModelCopyWith(_SpotTickerModel value, $Res Function(_SpotTickerModel) _then) = __$SpotTickerModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, MarketCategory category, double last, double open, double high, double low, double bid, double ask, double change, double percentage, double baseVolume, double quoteVolume, int timestamp, double? vwap, double? bidVolume, double? askVolume, double? previousClose, Map<String, dynamic>? info
});




}
/// @nodoc
class __$SpotTickerModelCopyWithImpl<$Res>
    implements _$SpotTickerModelCopyWith<$Res> {
  __$SpotTickerModelCopyWithImpl(this._self, this._then);

  final _SpotTickerModel _self;
  final $Res Function(_SpotTickerModel) _then;

/// Create a copy of SpotTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? category = null,Object? last = null,Object? open = null,Object? high = null,Object? low = null,Object? bid = null,Object? ask = null,Object? change = null,Object? percentage = null,Object? baseVolume = null,Object? quoteVolume = null,Object? timestamp = null,Object? vwap = freezed,Object? bidVolume = freezed,Object? askVolume = freezed,Object? previousClose = freezed,Object? info = freezed,}) {
  return _then(_SpotTickerModel(
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
as double?,bidVolume: freezed == bidVolume ? _self.bidVolume : bidVolume // ignore: cast_nullable_to_non_nullable
as double?,askVolume: freezed == askVolume ? _self.askVolume : askVolume // ignore: cast_nullable_to_non_nullable
as double?,previousClose: freezed == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double?,info: freezed == info ? _self._info : info // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
