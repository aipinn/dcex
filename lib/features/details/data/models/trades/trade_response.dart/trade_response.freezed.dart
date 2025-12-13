// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TradeResponse {

 List<Trade>? get result;
/// Create a copy of TradeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TradeResponseCopyWith<TradeResponse> get copyWith => _$TradeResponseCopyWithImpl<TradeResponse>(this as TradeResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TradeResponse&&const DeepCollectionEquality().equals(other.result, result));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(result));

@override
String toString() {
  return 'TradeResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class $TradeResponseCopyWith<$Res>  {
  factory $TradeResponseCopyWith(TradeResponse value, $Res Function(TradeResponse) _then) = _$TradeResponseCopyWithImpl;
@useResult
$Res call({
 List<Trade>? result
});




}
/// @nodoc
class _$TradeResponseCopyWithImpl<$Res>
    implements $TradeResponseCopyWith<$Res> {
  _$TradeResponseCopyWithImpl(this._self, this._then);

  final TradeResponse _self;
  final $Res Function(TradeResponse) _then;

/// Create a copy of TradeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = freezed,}) {
  return _then(_self.copyWith(
result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as List<Trade>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TradeResponse].
extension TradeResponsePatterns on TradeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TradeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TradeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TradeResponse value)  $default,){
final _that = this;
switch (_that) {
case _TradeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TradeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TradeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Trade>? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TradeResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Trade>? result)  $default,) {final _that = this;
switch (_that) {
case _TradeResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Trade>? result)?  $default,) {final _that = this;
switch (_that) {
case _TradeResponse() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _TradeResponse implements TradeResponse {
  const _TradeResponse({final  List<Trade>? result}): _result = result;
  

 final  List<Trade>? _result;
@override List<Trade>? get result {
  final value = _result;
  if (value == null) return null;
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TradeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TradeResponseCopyWith<_TradeResponse> get copyWith => __$TradeResponseCopyWithImpl<_TradeResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TradeResponse&&const DeepCollectionEquality().equals(other._result, _result));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result));

@override
String toString() {
  return 'TradeResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class _$TradeResponseCopyWith<$Res> implements $TradeResponseCopyWith<$Res> {
  factory _$TradeResponseCopyWith(_TradeResponse value, $Res Function(_TradeResponse) _then) = __$TradeResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Trade>? result
});




}
/// @nodoc
class __$TradeResponseCopyWithImpl<$Res>
    implements _$TradeResponseCopyWith<$Res> {
  __$TradeResponseCopyWithImpl(this._self, this._then);

  final _TradeResponse _self;
  final $Res Function(_TradeResponse) _then;

/// Create a copy of TradeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = freezed,}) {
  return _then(_TradeResponse(
result: freezed == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<Trade>?,
  ));
}


}

// dart format on
