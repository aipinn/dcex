// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GraphResponse {

 Graph get result;
/// Create a copy of GraphResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GraphResponseCopyWith<GraphResponse> get copyWith => _$GraphResponseCopyWithImpl<GraphResponse>(this as GraphResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GraphResponse&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'GraphResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class $GraphResponseCopyWith<$Res>  {
  factory $GraphResponseCopyWith(GraphResponse value, $Res Function(GraphResponse) _then) = _$GraphResponseCopyWithImpl;
@useResult
$Res call({
 Graph result
});


$GraphCopyWith<$Res> get result;

}
/// @nodoc
class _$GraphResponseCopyWithImpl<$Res>
    implements $GraphResponseCopyWith<$Res> {
  _$GraphResponseCopyWithImpl(this._self, this._then);

  final GraphResponse _self;
  final $Res Function(GraphResponse) _then;

/// Create a copy of GraphResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Graph,
  ));
}
/// Create a copy of GraphResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GraphCopyWith<$Res> get result {
  
  return $GraphCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [GraphResponse].
extension GraphResponsePatterns on GraphResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GraphResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GraphResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GraphResponse value)  $default,){
final _that = this;
switch (_that) {
case _GraphResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GraphResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GraphResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Graph result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GraphResponse() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Graph result)  $default,) {final _that = this;
switch (_that) {
case _GraphResponse():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Graph result)?  $default,) {final _that = this;
switch (_that) {
case _GraphResponse() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _GraphResponse implements GraphResponse {
  const _GraphResponse({required this.result});
  

@override final  Graph result;

/// Create a copy of GraphResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GraphResponseCopyWith<_GraphResponse> get copyWith => __$GraphResponseCopyWithImpl<_GraphResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GraphResponse&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'GraphResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class _$GraphResponseCopyWith<$Res> implements $GraphResponseCopyWith<$Res> {
  factory _$GraphResponseCopyWith(_GraphResponse value, $Res Function(_GraphResponse) _then) = __$GraphResponseCopyWithImpl;
@override @useResult
$Res call({
 Graph result
});


@override $GraphCopyWith<$Res> get result;

}
/// @nodoc
class __$GraphResponseCopyWithImpl<$Res>
    implements _$GraphResponseCopyWith<$Res> {
  __$GraphResponseCopyWithImpl(this._self, this._then);

  final _GraphResponse _self;
  final $Res Function(_GraphResponse) _then;

/// Create a copy of GraphResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_GraphResponse(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Graph,
  ));
}

/// Create a copy of GraphResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GraphCopyWith<$Res> get result {
  
  return $GraphCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
