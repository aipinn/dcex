// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Points {

 double get timestamp; double get openPrice; double get highPrice; double get lowPrice; double get closePrice; double get volume; double get quoteVolume;
/// Create a copy of Points
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsCopyWith<Points> get copyWith => _$PointsCopyWithImpl<Points>(this as Points, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Points&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.openPrice, openPrice) || other.openPrice == openPrice)&&(identical(other.highPrice, highPrice) || other.highPrice == highPrice)&&(identical(other.lowPrice, lowPrice) || other.lowPrice == lowPrice)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,openPrice,highPrice,lowPrice,closePrice,volume,quoteVolume);

@override
String toString() {
  return 'Points(timestamp: $timestamp, openPrice: $openPrice, highPrice: $highPrice, lowPrice: $lowPrice, closePrice: $closePrice, volume: $volume, quoteVolume: $quoteVolume)';
}


}

/// @nodoc
abstract mixin class $PointsCopyWith<$Res>  {
  factory $PointsCopyWith(Points value, $Res Function(Points) _then) = _$PointsCopyWithImpl;
@useResult
$Res call({
 double timestamp, double openPrice, double highPrice, double lowPrice, double closePrice, double volume, double quoteVolume
});




}
/// @nodoc
class _$PointsCopyWithImpl<$Res>
    implements $PointsCopyWith<$Res> {
  _$PointsCopyWithImpl(this._self, this._then);

  final Points _self;
  final $Res Function(Points) _then;

/// Create a copy of Points
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? openPrice = null,Object? highPrice = null,Object? lowPrice = null,Object? closePrice = null,Object? volume = null,Object? quoteVolume = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,openPrice: null == openPrice ? _self.openPrice : openPrice // ignore: cast_nullable_to_non_nullable
as double,highPrice: null == highPrice ? _self.highPrice : highPrice // ignore: cast_nullable_to_non_nullable
as double,lowPrice: null == lowPrice ? _self.lowPrice : lowPrice // ignore: cast_nullable_to_non_nullable
as double,closePrice: null == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,quoteVolume: null == quoteVolume ? _self.quoteVolume : quoteVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Points].
extension PointsPatterns on Points {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Points value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Points() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Points value)  $default,){
final _that = this;
switch (_that) {
case _Points():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Points value)?  $default,){
final _that = this;
switch (_that) {
case _Points() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double timestamp,  double openPrice,  double highPrice,  double lowPrice,  double closePrice,  double volume,  double quoteVolume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Points() when $default != null:
return $default(_that.timestamp,_that.openPrice,_that.highPrice,_that.lowPrice,_that.closePrice,_that.volume,_that.quoteVolume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double timestamp,  double openPrice,  double highPrice,  double lowPrice,  double closePrice,  double volume,  double quoteVolume)  $default,) {final _that = this;
switch (_that) {
case _Points():
return $default(_that.timestamp,_that.openPrice,_that.highPrice,_that.lowPrice,_that.closePrice,_that.volume,_that.quoteVolume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double timestamp,  double openPrice,  double highPrice,  double lowPrice,  double closePrice,  double volume,  double quoteVolume)?  $default,) {final _that = this;
switch (_that) {
case _Points() when $default != null:
return $default(_that.timestamp,_that.openPrice,_that.highPrice,_that.lowPrice,_that.closePrice,_that.volume,_that.quoteVolume);case _:
  return null;

}
}

}

/// @nodoc


class _Points implements Points {
  const _Points({required this.timestamp, required this.openPrice, required this.highPrice, required this.lowPrice, required this.closePrice, required this.volume, required this.quoteVolume});
  

@override final  double timestamp;
@override final  double openPrice;
@override final  double highPrice;
@override final  double lowPrice;
@override final  double closePrice;
@override final  double volume;
@override final  double quoteVolume;

/// Create a copy of Points
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsCopyWith<_Points> get copyWith => __$PointsCopyWithImpl<_Points>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Points&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.openPrice, openPrice) || other.openPrice == openPrice)&&(identical(other.highPrice, highPrice) || other.highPrice == highPrice)&&(identical(other.lowPrice, lowPrice) || other.lowPrice == lowPrice)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.quoteVolume, quoteVolume) || other.quoteVolume == quoteVolume));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,openPrice,highPrice,lowPrice,closePrice,volume,quoteVolume);

@override
String toString() {
  return 'Points(timestamp: $timestamp, openPrice: $openPrice, highPrice: $highPrice, lowPrice: $lowPrice, closePrice: $closePrice, volume: $volume, quoteVolume: $quoteVolume)';
}


}

/// @nodoc
abstract mixin class _$PointsCopyWith<$Res> implements $PointsCopyWith<$Res> {
  factory _$PointsCopyWith(_Points value, $Res Function(_Points) _then) = __$PointsCopyWithImpl;
@override @useResult
$Res call({
 double timestamp, double openPrice, double highPrice, double lowPrice, double closePrice, double volume, double quoteVolume
});




}
/// @nodoc
class __$PointsCopyWithImpl<$Res>
    implements _$PointsCopyWith<$Res> {
  __$PointsCopyWithImpl(this._self, this._then);

  final _Points _self;
  final $Res Function(_Points) _then;

/// Create a copy of Points
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? openPrice = null,Object? highPrice = null,Object? lowPrice = null,Object? closePrice = null,Object? volume = null,Object? quoteVolume = null,}) {
  return _then(_Points(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,openPrice: null == openPrice ? _self.openPrice : openPrice // ignore: cast_nullable_to_non_nullable
as double,highPrice: null == highPrice ? _self.highPrice : highPrice // ignore: cast_nullable_to_non_nullable
as double,lowPrice: null == lowPrice ? _self.lowPrice : lowPrice // ignore: cast_nullable_to_non_nullable
as double,closePrice: null == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,quoteVolume: null == quoteVolume ? _self.quoteVolume : quoteVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
