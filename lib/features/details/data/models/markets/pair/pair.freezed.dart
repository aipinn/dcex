// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pair {

 int? get id; String get exchange; String get pair;// symbol，eg "BTC/USDT"
 bool? get active; String? get type;// "spot" / "future" / "option"
 String? get route;
/// Create a copy of Pair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PairCopyWith<Pair> get copyWith => _$PairCopyWithImpl<Pair>(this as Pair, _$identity);

  /// Serializes this Pair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pair&&(identical(other.id, id) || other.id == id)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.pair, pair) || other.pair == pair)&&(identical(other.active, active) || other.active == active)&&(identical(other.type, type) || other.type == type)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,exchange,pair,active,type,route);

@override
String toString() {
  return 'Pair(id: $id, exchange: $exchange, pair: $pair, active: $active, type: $type, route: $route)';
}


}

/// @nodoc
abstract mixin class $PairCopyWith<$Res>  {
  factory $PairCopyWith(Pair value, $Res Function(Pair) _then) = _$PairCopyWithImpl;
@useResult
$Res call({
 int? id, String exchange, String pair, bool? active, String? type, String? route
});




}
/// @nodoc
class _$PairCopyWithImpl<$Res>
    implements $PairCopyWith<$Res> {
  _$PairCopyWithImpl(this._self, this._then);

  final Pair _self;
  final $Res Function(Pair) _then;

/// Create a copy of Pair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? exchange = null,Object? pair = null,Object? active = freezed,Object? type = freezed,Object? route = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,pair: null == pair ? _self.pair : pair // ignore: cast_nullable_to_non_nullable
as String,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Pair].
extension PairPatterns on Pair {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pair() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pair value)  $default,){
final _that = this;
switch (_that) {
case _Pair():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pair value)?  $default,){
final _that = this;
switch (_that) {
case _Pair() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String exchange,  String pair,  bool? active,  String? type,  String? route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pair() when $default != null:
return $default(_that.id,_that.exchange,_that.pair,_that.active,_that.type,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String exchange,  String pair,  bool? active,  String? type,  String? route)  $default,) {final _that = this;
switch (_that) {
case _Pair():
return $default(_that.id,_that.exchange,_that.pair,_that.active,_that.type,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String exchange,  String pair,  bool? active,  String? type,  String? route)?  $default,) {final _that = this;
switch (_that) {
case _Pair() when $default != null:
return $default(_that.id,_that.exchange,_that.pair,_that.active,_that.type,_that.route);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pair implements Pair {
  const _Pair({this.id, required this.exchange, required this.pair, this.active, this.type, this.route});
  factory _Pair.fromJson(Map<String, dynamic> json) => _$PairFromJson(json);

@override final  int? id;
@override final  String exchange;
@override final  String pair;
// symbol，eg "BTC/USDT"
@override final  bool? active;
@override final  String? type;
// "spot" / "future" / "option"
@override final  String? route;

/// Create a copy of Pair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PairCopyWith<_Pair> get copyWith => __$PairCopyWithImpl<_Pair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pair&&(identical(other.id, id) || other.id == id)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.pair, pair) || other.pair == pair)&&(identical(other.active, active) || other.active == active)&&(identical(other.type, type) || other.type == type)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,exchange,pair,active,type,route);

@override
String toString() {
  return 'Pair(id: $id, exchange: $exchange, pair: $pair, active: $active, type: $type, route: $route)';
}


}

/// @nodoc
abstract mixin class _$PairCopyWith<$Res> implements $PairCopyWith<$Res> {
  factory _$PairCopyWith(_Pair value, $Res Function(_Pair) _then) = __$PairCopyWithImpl;
@override @useResult
$Res call({
 int? id, String exchange, String pair, bool? active, String? type, String? route
});




}
/// @nodoc
class __$PairCopyWithImpl<$Res>
    implements _$PairCopyWith<$Res> {
  __$PairCopyWithImpl(this._self, this._then);

  final _Pair _self;
  final $Res Function(_Pair) _then;

/// Create a copy of Pair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? exchange = null,Object? pair = null,Object? active = freezed,Object? type = freezed,Object? route = freezed,}) {
  return _then(_Pair(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,pair: null == pair ? _self.pair : pair // ignore: cast_nullable_to_non_nullable
as String,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
