// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pair_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PairResponse {

 PairSummary get result;
/// Create a copy of PairResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PairResponseCopyWith<PairResponse> get copyWith => _$PairResponseCopyWithImpl<PairResponse>(this as PairResponse, _$identity);

  /// Serializes this PairResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PairResponse&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'PairResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class $PairResponseCopyWith<$Res>  {
  factory $PairResponseCopyWith(PairResponse value, $Res Function(PairResponse) _then) = _$PairResponseCopyWithImpl;
@useResult
$Res call({
 PairSummary result
});


$PairSummaryCopyWith<$Res> get result;

}
/// @nodoc
class _$PairResponseCopyWithImpl<$Res>
    implements $PairResponseCopyWith<$Res> {
  _$PairResponseCopyWithImpl(this._self, this._then);

  final PairResponse _self;
  final $Res Function(PairResponse) _then;

/// Create a copy of PairResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as PairSummary,
  ));
}
/// Create a copy of PairResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PairSummaryCopyWith<$Res> get result {
  
  return $PairSummaryCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [PairResponse].
extension PairResponsePatterns on PairResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PairResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PairResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PairResponse value)  $default,){
final _that = this;
switch (_that) {
case _PairResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PairResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PairResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PairSummary result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PairResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PairSummary result)  $default,) {final _that = this;
switch (_that) {
case _PairResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PairSummary result)?  $default,) {final _that = this;
switch (_that) {
case _PairResponse() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PairResponse implements PairResponse {
  const _PairResponse(this.result);
  factory _PairResponse.fromJson(Map<String, dynamic> json) => _$PairResponseFromJson(json);

@override final  PairSummary result;

/// Create a copy of PairResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PairResponseCopyWith<_PairResponse> get copyWith => __$PairResponseCopyWithImpl<_PairResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PairResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PairResponse&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'PairResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class _$PairResponseCopyWith<$Res> implements $PairResponseCopyWith<$Res> {
  factory _$PairResponseCopyWith(_PairResponse value, $Res Function(_PairResponse) _then) = __$PairResponseCopyWithImpl;
@override @useResult
$Res call({
 PairSummary result
});


@override $PairSummaryCopyWith<$Res> get result;

}
/// @nodoc
class __$PairResponseCopyWithImpl<$Res>
    implements _$PairResponseCopyWith<$Res> {
  __$PairResponseCopyWithImpl(this._self, this._then);

  final _PairResponse _self;
  final $Res Function(_PairResponse) _then;

/// Create a copy of PairResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_PairResponse(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as PairSummary,
  ));
}

/// Create a copy of PairResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PairSummaryCopyWith<$Res> get result {
  
  return $PairSummaryCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
