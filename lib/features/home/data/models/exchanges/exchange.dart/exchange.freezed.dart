// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Exchange {

 int get id; String get symbol; String get name; String get route; bool get active;
/// Create a copy of Exchange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeCopyWith<Exchange> get copyWith => _$ExchangeCopyWithImpl<Exchange>(this as Exchange, _$identity);

  /// Serializes this Exchange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exchange&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.route, route) || other.route == route)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,route,active);

@override
String toString() {
  return 'Exchange(id: $id, symbol: $symbol, name: $name, route: $route, active: $active)';
}


}

/// @nodoc
abstract mixin class $ExchangeCopyWith<$Res>  {
  factory $ExchangeCopyWith(Exchange value, $Res Function(Exchange) _then) = _$ExchangeCopyWithImpl;
@useResult
$Res call({
 int id, String symbol, String name, String route, bool active
});




}
/// @nodoc
class _$ExchangeCopyWithImpl<$Res>
    implements $ExchangeCopyWith<$Res> {
  _$ExchangeCopyWithImpl(this._self, this._then);

  final Exchange _self;
  final $Res Function(Exchange) _then;

/// Create a copy of Exchange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? route = null,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Exchange].
extension ExchangePatterns on Exchange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Exchange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Exchange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Exchange value)  $default,){
final _that = this;
switch (_that) {
case _Exchange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Exchange value)?  $default,){
final _that = this;
switch (_that) {
case _Exchange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String symbol,  String name,  String route,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Exchange() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.route,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String symbol,  String name,  String route,  bool active)  $default,) {final _that = this;
switch (_that) {
case _Exchange():
return $default(_that.id,_that.symbol,_that.name,_that.route,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String symbol,  String name,  String route,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _Exchange() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.route,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Exchange implements Exchange {
  const _Exchange({required this.id, required this.symbol, required this.name, required this.route, required this.active});
  factory _Exchange.fromJson(Map<String, dynamic> json) => _$ExchangeFromJson(json);

@override final  int id;
@override final  String symbol;
@override final  String name;
@override final  String route;
@override final  bool active;

/// Create a copy of Exchange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeCopyWith<_Exchange> get copyWith => __$ExchangeCopyWithImpl<_Exchange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Exchange&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.route, route) || other.route == route)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,route,active);

@override
String toString() {
  return 'Exchange(id: $id, symbol: $symbol, name: $name, route: $route, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ExchangeCopyWith<$Res> implements $ExchangeCopyWith<$Res> {
  factory _$ExchangeCopyWith(_Exchange value, $Res Function(_Exchange) _then) = __$ExchangeCopyWithImpl;
@override @useResult
$Res call({
 int id, String symbol, String name, String route, bool active
});




}
/// @nodoc
class __$ExchangeCopyWithImpl<$Res>
    implements _$ExchangeCopyWith<$Res> {
  __$ExchangeCopyWithImpl(this._self, this._then);

  final _Exchange _self;
  final $Res Function(_Exchange) _then;

/// Create a copy of Exchange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? route = null,Object? active = null,}) {
  return _then(_Exchange(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
