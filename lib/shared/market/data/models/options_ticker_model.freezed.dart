// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'options_ticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionsTickerModel {

// 核心统一字段（与其他类型共享）
 String get symbol;// 期权符号，例如 BTC-250328-100000-C
 MarketCategory get category; double get last;// 最新成交价（期权报价）
 double get open; double get high; double get low; double get bid; double get ask; double get change; double get percentage; double get baseVolume;// 合约数量（张数）
 double get quoteVolume; int get timestamp;// ── 期权核心专有字段 ──
 double get strikePrice;// 行权价（Strike Price）
 int get expiryDate;// 到期日（Expiry Date）
 OptionType get optionType;// call / put
// 希腊字母（Greeks） - 大部分交易所不直接在 ticker 返回，需要额外请求
// 这里全部设为可空，实际使用时可能为 null
 double? get delta;// Delta（价格敏感度）
 double? get gamma;// Gamma（Delta变化率）
 double? get theta;// Theta（时间衰减）
 double? get vega;// Vega（波动率敏感度）
 double? get rho;// Rho（利率敏感度）
 double? get impliedVolatility;// 隐含波动率 IV（最重要指标之一）
// 其他期权常见字段
 double? get underlyingPrice;// 标的资产当前价格
 double? get markPrice;// 标记价格（部分期权交易所提供）
 double? get vwap;// 加权平均价（VWAP）
// 原始数据（强烈建议保留）
 Map<String, dynamic>? get info;
/// Create a copy of OptionsTickerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionsTickerModelCopyWith<OptionsTickerModel> get copyWith => _$OptionsTickerModelCopyWithImpl<OptionsTickerModel>(this as OptionsTickerModel, _$identity);

  /// Serializes this OptionsTickerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionsTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.category, category) || other.category == category)&&(identical(other.last, last) || other.last == last)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.bid, bid) || other.bid == bid)&&(identical(other.ask, ask) || other.ask == ask)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.baseVolume, baseVolume) || other.baseVolume == baseVolume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.strikePrice, strikePrice) || other.strikePrice == strikePrice)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.optionType, optionType) || other.optionType == optionType)&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.gamma, gamma) || other.gamma == gamma)&&(identical(other.theta, theta) || other.theta == theta)&&(identical(other.vega, vega) || other.vega == vega)&&(identical(other.rho, rho) || other.rho == rho)&&(identical(other.impliedVolatility, impliedVolatility) || other.impliedVolatility == impliedVolatility)&&(identical(other.underlyingPrice, underlyingPrice) || other.underlyingPrice == underlyingPrice)&&(identical(other.markPrice, markPrice) || other.markPrice == markPrice)&&(identical(other.vwap, vwap) || other.vwap == vwap)&&const DeepCollectionEquality().equals(other.info, info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,category,last,open,high,low,bid,ask,change,percentage,baseVolume,quoteVolume,timestamp,strikePrice,expiryDate,optionType,delta,gamma,theta,vega,rho,impliedVolatility,underlyingPrice,markPrice,vwap,const DeepCollectionEquality().hash(info)]);

@override
String toString() {
  return 'OptionsTickerModel(symbol: $symbol, category: $category, last: $last, open: $open, high: $high, low: $low, bid: $bid, ask: $ask, change: $change, percentage: $percentage, baseVolume: $baseVolume, quoteVolume: $quoteVolume, timestamp: $timestamp, strikePrice: $strikePrice, expiryDate: $expiryDate, optionType: $optionType, delta: $delta, gamma: $gamma, theta: $theta, vega: $vega, rho: $rho, impliedVolatility: $impliedVolatility, underlyingPrice: $underlyingPrice, markPrice: $markPrice, vwap: $vwap, info: $info)';
}


}

/// @nodoc
abstract mixin class $OptionsTickerModelCopyWith<$Res>  {
  factory $OptionsTickerModelCopyWith(OptionsTickerModel value, $Res Function(OptionsTickerModel) _then) = _$OptionsTickerModelCopyWithImpl;
@useResult
$Res call({
 String symbol, MarketCategory category, double last, double open, double high, double low, double bid, double ask, double change, double percentage, double baseVolume, double quoteVolume, int timestamp, double strikePrice, int expiryDate, OptionType optionType, double? delta, double? gamma, double? theta, double? vega, double? rho, double? impliedVolatility, double? underlyingPrice, double? markPrice, double? vwap, Map<String, dynamic>? info
});




}
/// @nodoc
class _$OptionsTickerModelCopyWithImpl<$Res>
    implements $OptionsTickerModelCopyWith<$Res> {
  _$OptionsTickerModelCopyWithImpl(this._self, this._then);

  final OptionsTickerModel _self;
  final $Res Function(OptionsTickerModel) _then;

/// Create a copy of OptionsTickerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? category = null,Object? last = null,Object? open = null,Object? high = null,Object? low = null,Object? bid = null,Object? ask = null,Object? change = null,Object? percentage = null,Object? baseVolume = null,Object? quoteVolume = null,Object? timestamp = null,Object? strikePrice = null,Object? expiryDate = null,Object? optionType = null,Object? delta = freezed,Object? gamma = freezed,Object? theta = freezed,Object? vega = freezed,Object? rho = freezed,Object? impliedVolatility = freezed,Object? underlyingPrice = freezed,Object? markPrice = freezed,Object? vwap = freezed,Object? info = freezed,}) {
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
as int,strikePrice: null == strikePrice ? _self.strikePrice : strikePrice // ignore: cast_nullable_to_non_nullable
as double,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as int,optionType: null == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as OptionType,delta: freezed == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as double?,gamma: freezed == gamma ? _self.gamma : gamma // ignore: cast_nullable_to_non_nullable
as double?,theta: freezed == theta ? _self.theta : theta // ignore: cast_nullable_to_non_nullable
as double?,vega: freezed == vega ? _self.vega : vega // ignore: cast_nullable_to_non_nullable
as double?,rho: freezed == rho ? _self.rho : rho // ignore: cast_nullable_to_non_nullable
as double?,impliedVolatility: freezed == impliedVolatility ? _self.impliedVolatility : impliedVolatility // ignore: cast_nullable_to_non_nullable
as double?,underlyingPrice: freezed == underlyingPrice ? _self.underlyingPrice : underlyingPrice // ignore: cast_nullable_to_non_nullable
as double?,markPrice: freezed == markPrice ? _self.markPrice : markPrice // ignore: cast_nullable_to_non_nullable
as double?,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionsTickerModel].
extension OptionsTickerModelPatterns on OptionsTickerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionsTickerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionsTickerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionsTickerModel value)  $default,){
final _that = this;
switch (_that) {
case _OptionsTickerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionsTickerModel value)?  $default,){
final _that = this;
switch (_that) {
case _OptionsTickerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double strikePrice,  int expiryDate,  OptionType optionType,  double? delta,  double? gamma,  double? theta,  double? vega,  double? rho,  double? impliedVolatility,  double? underlyingPrice,  double? markPrice,  double? vwap,  Map<String, dynamic>? info)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionsTickerModel() when $default != null:
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.strikePrice,_that.expiryDate,_that.optionType,_that.delta,_that.gamma,_that.theta,_that.vega,_that.rho,_that.impliedVolatility,_that.underlyingPrice,_that.markPrice,_that.vwap,_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double strikePrice,  int expiryDate,  OptionType optionType,  double? delta,  double? gamma,  double? theta,  double? vega,  double? rho,  double? impliedVolatility,  double? underlyingPrice,  double? markPrice,  double? vwap,  Map<String, dynamic>? info)  $default,) {final _that = this;
switch (_that) {
case _OptionsTickerModel():
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.strikePrice,_that.expiryDate,_that.optionType,_that.delta,_that.gamma,_that.theta,_that.vega,_that.rho,_that.impliedVolatility,_that.underlyingPrice,_that.markPrice,_that.vwap,_that.info);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  MarketCategory category,  double last,  double open,  double high,  double low,  double bid,  double ask,  double change,  double percentage,  double baseVolume,  double quoteVolume,  int timestamp,  double strikePrice,  int expiryDate,  OptionType optionType,  double? delta,  double? gamma,  double? theta,  double? vega,  double? rho,  double? impliedVolatility,  double? underlyingPrice,  double? markPrice,  double? vwap,  Map<String, dynamic>? info)?  $default,) {final _that = this;
switch (_that) {
case _OptionsTickerModel() when $default != null:
return $default(_that.symbol,_that.category,_that.last,_that.open,_that.high,_that.low,_that.bid,_that.ask,_that.change,_that.percentage,_that.baseVolume,_that.quoteVolume,_that.timestamp,_that.strikePrice,_that.expiryDate,_that.optionType,_that.delta,_that.gamma,_that.theta,_that.vega,_that.rho,_that.impliedVolatility,_that.underlyingPrice,_that.markPrice,_that.vwap,_that.info);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionsTickerModel extends OptionsTickerModel {
  const _OptionsTickerModel({required this.symbol, this.category = MarketCategory.option, required this.last, required this.open, required this.high, required this.low, required this.bid, required this.ask, required this.change, required this.percentage, required this.baseVolume, required this.quoteVolume, required this.timestamp, required this.strikePrice, required this.expiryDate, required this.optionType, this.delta, this.gamma, this.theta, this.vega, this.rho, this.impliedVolatility, this.underlyingPrice, this.markPrice, this.vwap, final  Map<String, dynamic>? info}): _info = info,super._();
  factory _OptionsTickerModel.fromJson(Map<String, dynamic> json) => _$OptionsTickerModelFromJson(json);

// 核心统一字段（与其他类型共享）
@override final  String symbol;
// 期权符号，例如 BTC-250328-100000-C
@override@JsonKey() final  MarketCategory category;
@override final  double last;
// 最新成交价（期权报价）
@override final  double open;
@override final  double high;
@override final  double low;
@override final  double bid;
@override final  double ask;
@override final  double change;
@override final  double percentage;
@override final  double baseVolume;
// 合约数量（张数）
@override final  double quoteVolume;
@override final  int timestamp;
// ── 期权核心专有字段 ──
@override final  double strikePrice;
// 行权价（Strike Price）
@override final  int expiryDate;
// 到期日（Expiry Date）
@override final  OptionType optionType;
// call / put
// 希腊字母（Greeks） - 大部分交易所不直接在 ticker 返回，需要额外请求
// 这里全部设为可空，实际使用时可能为 null
@override final  double? delta;
// Delta（价格敏感度）
@override final  double? gamma;
// Gamma（Delta变化率）
@override final  double? theta;
// Theta（时间衰减）
@override final  double? vega;
// Vega（波动率敏感度）
@override final  double? rho;
// Rho（利率敏感度）
@override final  double? impliedVolatility;
// 隐含波动率 IV（最重要指标之一）
// 其他期权常见字段
@override final  double? underlyingPrice;
// 标的资产当前价格
@override final  double? markPrice;
// 标记价格（部分期权交易所提供）
@override final  double? vwap;
// 加权平均价（VWAP）
// 原始数据（强烈建议保留）
 final  Map<String, dynamic>? _info;
// 加权平均价（VWAP）
// 原始数据（强烈建议保留）
@override Map<String, dynamic>? get info {
  final value = _info;
  if (value == null) return null;
  if (_info is EqualUnmodifiableMapView) return _info;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OptionsTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionsTickerModelCopyWith<_OptionsTickerModel> get copyWith => __$OptionsTickerModelCopyWithImpl<_OptionsTickerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionsTickerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionsTickerModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.category, category) || other.category == category)&&(identical(other.last, last) || other.last == last)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.bid, bid) || other.bid == bid)&&(identical(other.ask, ask) || other.ask == ask)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.baseVolume, baseVolume) || other.baseVolume == baseVolume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.strikePrice, strikePrice) || other.strikePrice == strikePrice)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.optionType, optionType) || other.optionType == optionType)&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.gamma, gamma) || other.gamma == gamma)&&(identical(other.theta, theta) || other.theta == theta)&&(identical(other.vega, vega) || other.vega == vega)&&(identical(other.rho, rho) || other.rho == rho)&&(identical(other.impliedVolatility, impliedVolatility) || other.impliedVolatility == impliedVolatility)&&(identical(other.underlyingPrice, underlyingPrice) || other.underlyingPrice == underlyingPrice)&&(identical(other.markPrice, markPrice) || other.markPrice == markPrice)&&(identical(other.vwap, vwap) || other.vwap == vwap)&&const DeepCollectionEquality().equals(other._info, _info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,category,last,open,high,low,bid,ask,change,percentage,baseVolume,quoteVolume,timestamp,strikePrice,expiryDate,optionType,delta,gamma,theta,vega,rho,impliedVolatility,underlyingPrice,markPrice,vwap,const DeepCollectionEquality().hash(_info)]);

@override
String toString() {
  return 'OptionsTickerModel(symbol: $symbol, category: $category, last: $last, open: $open, high: $high, low: $low, bid: $bid, ask: $ask, change: $change, percentage: $percentage, baseVolume: $baseVolume, quoteVolume: $quoteVolume, timestamp: $timestamp, strikePrice: $strikePrice, expiryDate: $expiryDate, optionType: $optionType, delta: $delta, gamma: $gamma, theta: $theta, vega: $vega, rho: $rho, impliedVolatility: $impliedVolatility, underlyingPrice: $underlyingPrice, markPrice: $markPrice, vwap: $vwap, info: $info)';
}


}

/// @nodoc
abstract mixin class _$OptionsTickerModelCopyWith<$Res> implements $OptionsTickerModelCopyWith<$Res> {
  factory _$OptionsTickerModelCopyWith(_OptionsTickerModel value, $Res Function(_OptionsTickerModel) _then) = __$OptionsTickerModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, MarketCategory category, double last, double open, double high, double low, double bid, double ask, double change, double percentage, double baseVolume, double quoteVolume, int timestamp, double strikePrice, int expiryDate, OptionType optionType, double? delta, double? gamma, double? theta, double? vega, double? rho, double? impliedVolatility, double? underlyingPrice, double? markPrice, double? vwap, Map<String, dynamic>? info
});




}
/// @nodoc
class __$OptionsTickerModelCopyWithImpl<$Res>
    implements _$OptionsTickerModelCopyWith<$Res> {
  __$OptionsTickerModelCopyWithImpl(this._self, this._then);

  final _OptionsTickerModel _self;
  final $Res Function(_OptionsTickerModel) _then;

/// Create a copy of OptionsTickerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? category = null,Object? last = null,Object? open = null,Object? high = null,Object? low = null,Object? bid = null,Object? ask = null,Object? change = null,Object? percentage = null,Object? baseVolume = null,Object? quoteVolume = null,Object? timestamp = null,Object? strikePrice = null,Object? expiryDate = null,Object? optionType = null,Object? delta = freezed,Object? gamma = freezed,Object? theta = freezed,Object? vega = freezed,Object? rho = freezed,Object? impliedVolatility = freezed,Object? underlyingPrice = freezed,Object? markPrice = freezed,Object? vwap = freezed,Object? info = freezed,}) {
  return _then(_OptionsTickerModel(
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
as int,strikePrice: null == strikePrice ? _self.strikePrice : strikePrice // ignore: cast_nullable_to_non_nullable
as double,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as int,optionType: null == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as OptionType,delta: freezed == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as double?,gamma: freezed == gamma ? _self.gamma : gamma // ignore: cast_nullable_to_non_nullable
as double?,theta: freezed == theta ? _self.theta : theta // ignore: cast_nullable_to_non_nullable
as double?,vega: freezed == vega ? _self.vega : vega // ignore: cast_nullable_to_non_nullable
as double?,rho: freezed == rho ? _self.rho : rho // ignore: cast_nullable_to_non_nullable
as double?,impliedVolatility: freezed == impliedVolatility ? _self.impliedVolatility : impliedVolatility // ignore: cast_nullable_to_non_nullable
as double?,underlyingPrice: freezed == underlyingPrice ? _self.underlyingPrice : underlyingPrice // ignore: cast_nullable_to_non_nullable
as double?,markPrice: freezed == markPrice ? _self.markPrice : markPrice // ignore: cast_nullable_to_non_nullable
as double?,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,info: freezed == info ? _self._info : info // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
