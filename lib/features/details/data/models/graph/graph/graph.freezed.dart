// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Graph {

 List<PairGraph> get pairs;
/// Create a copy of Graph
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GraphCopyWith<Graph> get copyWith => _$GraphCopyWithImpl<Graph>(this as Graph, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Graph&&const DeepCollectionEquality().equals(other.pairs, pairs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pairs));

@override
String toString() {
  return 'Graph(pairs: $pairs)';
}


}

/// @nodoc
abstract mixin class $GraphCopyWith<$Res>  {
  factory $GraphCopyWith(Graph value, $Res Function(Graph) _then) = _$GraphCopyWithImpl;
@useResult
$Res call({
 List<PairGraph> pairs
});




}
/// @nodoc
class _$GraphCopyWithImpl<$Res>
    implements $GraphCopyWith<$Res> {
  _$GraphCopyWithImpl(this._self, this._then);

  final Graph _self;
  final $Res Function(Graph) _then;

/// Create a copy of Graph
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pairs = null,}) {
  return _then(_self.copyWith(
pairs: null == pairs ? _self.pairs : pairs // ignore: cast_nullable_to_non_nullable
as List<PairGraph>,
  ));
}

}


/// Adds pattern-matching-related methods to [Graph].
extension GraphPatterns on Graph {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Graph value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Graph() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Graph value)  $default,){
final _that = this;
switch (_that) {
case _Graph():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Graph value)?  $default,){
final _that = this;
switch (_that) {
case _Graph() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PairGraph> pairs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Graph() when $default != null:
return $default(_that.pairs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PairGraph> pairs)  $default,) {final _that = this;
switch (_that) {
case _Graph():
return $default(_that.pairs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PairGraph> pairs)?  $default,) {final _that = this;
switch (_that) {
case _Graph() when $default != null:
return $default(_that.pairs);case _:
  return null;

}
}

}

/// @nodoc


class _Graph implements Graph {
  const _Graph({required final  List<PairGraph> pairs}): _pairs = pairs;
  

 final  List<PairGraph> _pairs;
@override List<PairGraph> get pairs {
  if (_pairs is EqualUnmodifiableListView) return _pairs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pairs);
}


/// Create a copy of Graph
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GraphCopyWith<_Graph> get copyWith => __$GraphCopyWithImpl<_Graph>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Graph&&const DeepCollectionEquality().equals(other._pairs, _pairs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pairs));

@override
String toString() {
  return 'Graph(pairs: $pairs)';
}


}

/// @nodoc
abstract mixin class _$GraphCopyWith<$Res> implements $GraphCopyWith<$Res> {
  factory _$GraphCopyWith(_Graph value, $Res Function(_Graph) _then) = __$GraphCopyWithImpl;
@override @useResult
$Res call({
 List<PairGraph> pairs
});




}
/// @nodoc
class __$GraphCopyWithImpl<$Res>
    implements _$GraphCopyWith<$Res> {
  __$GraphCopyWithImpl(this._self, this._then);

  final _Graph _self;
  final $Res Function(_Graph) _then;

/// Create a copy of Graph
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pairs = null,}) {
  return _then(_Graph(
pairs: null == pairs ? _self._pairs : pairs // ignore: cast_nullable_to_non_nullable
as List<PairGraph>,
  ));
}


}

// dart format on
