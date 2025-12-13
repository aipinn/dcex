// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pair_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PairGraph {

 String get period; List<Points> get points;
/// Create a copy of PairGraph
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PairGraphCopyWith<PairGraph> get copyWith => _$PairGraphCopyWithImpl<PairGraph>(this as PairGraph, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PairGraph&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.points, points));
}


@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'PairGraph(period: $period, points: $points)';
}


}

/// @nodoc
abstract mixin class $PairGraphCopyWith<$Res>  {
  factory $PairGraphCopyWith(PairGraph value, $Res Function(PairGraph) _then) = _$PairGraphCopyWithImpl;
@useResult
$Res call({
 String period, List<Points> points
});




}
/// @nodoc
class _$PairGraphCopyWithImpl<$Res>
    implements $PairGraphCopyWith<$Res> {
  _$PairGraphCopyWithImpl(this._self, this._then);

  final PairGraph _self;
  final $Res Function(PairGraph) _then;

/// Create a copy of PairGraph
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? points = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<Points>,
  ));
}

}


/// Adds pattern-matching-related methods to [PairGraph].
extension PairGraphPatterns on PairGraph {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PairGraph value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PairGraph() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PairGraph value)  $default,){
final _that = this;
switch (_that) {
case _PairGraph():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PairGraph value)?  $default,){
final _that = this;
switch (_that) {
case _PairGraph() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  List<Points> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PairGraph() when $default != null:
return $default(_that.period,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  List<Points> points)  $default,) {final _that = this;
switch (_that) {
case _PairGraph():
return $default(_that.period,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  List<Points> points)?  $default,) {final _that = this;
switch (_that) {
case _PairGraph() when $default != null:
return $default(_that.period,_that.points);case _:
  return null;

}
}

}

/// @nodoc


class _PairGraph implements PairGraph {
  const _PairGraph({required this.period, required final  List<Points> points}): _points = points;
  

@override final  String period;
 final  List<Points> _points;
@override List<Points> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of PairGraph
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PairGraphCopyWith<_PairGraph> get copyWith => __$PairGraphCopyWithImpl<_PairGraph>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PairGraph&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other._points, _points));
}


@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'PairGraph(period: $period, points: $points)';
}


}

/// @nodoc
abstract mixin class _$PairGraphCopyWith<$Res> implements $PairGraphCopyWith<$Res> {
  factory _$PairGraphCopyWith(_PairGraph value, $Res Function(_PairGraph) _then) = __$PairGraphCopyWithImpl;
@override @useResult
$Res call({
 String period, List<Points> points
});




}
/// @nodoc
class __$PairGraphCopyWithImpl<$Res>
    implements _$PairGraphCopyWith<$Res> {
  __$PairGraphCopyWithImpl(this._self, this._then);

  final _PairGraph _self;
  final $Res Function(_PairGraph) _then;

/// Create a copy of PairGraph
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? points = null,}) {
  return _then(_PairGraph(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<Points>,
  ));
}


}

// dart format on
