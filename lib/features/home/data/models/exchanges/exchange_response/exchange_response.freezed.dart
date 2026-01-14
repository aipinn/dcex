// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeResponse {

 List<Exchange> get result; int get total; String get source;
/// Create a copy of ExchangeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeResponseCopyWith<ExchangeResponse> get copyWith => _$ExchangeResponseCopyWithImpl<ExchangeResponse>(this as ExchangeResponse, _$identity);

  /// Serializes this ExchangeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeResponse&&const DeepCollectionEquality().equals(other.result, result)&&(identical(other.total, total) || other.total == total)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(result),total,source);

@override
String toString() {
  return 'ExchangeResponse(result: $result, total: $total, source: $source)';
}


}

/// @nodoc
abstract mixin class $ExchangeResponseCopyWith<$Res>  {
  factory $ExchangeResponseCopyWith(ExchangeResponse value, $Res Function(ExchangeResponse) _then) = _$ExchangeResponseCopyWithImpl;
@useResult
$Res call({
 List<Exchange> result, int total, String source
});




}
/// @nodoc
class _$ExchangeResponseCopyWithImpl<$Res>
    implements $ExchangeResponseCopyWith<$Res> {
  _$ExchangeResponseCopyWithImpl(this._self, this._then);

  final ExchangeResponse _self;
  final $Res Function(ExchangeResponse) _then;

/// Create a copy of ExchangeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? total = null,Object? source = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as List<Exchange>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExchangeResponse].
extension ExchangeResponsePatterns on ExchangeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeResponse value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Exchange> result,  int total,  String source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeResponse() when $default != null:
return $default(_that.result,_that.total,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Exchange> result,  int total,  String source)  $default,) {final _that = this;
switch (_that) {
case _ExchangeResponse():
return $default(_that.result,_that.total,_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Exchange> result,  int total,  String source)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeResponse() when $default != null:
return $default(_that.result,_that.total,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExchangeResponse implements ExchangeResponse {
  const _ExchangeResponse({required final  List<Exchange> result, required this.total, required this.source}): _result = result;
  factory _ExchangeResponse.fromJson(Map<String, dynamic> json) => _$ExchangeResponseFromJson(json);

 final  List<Exchange> _result;
@override List<Exchange> get result {
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_result);
}

@override final  int total;
@override final  String source;

/// Create a copy of ExchangeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeResponseCopyWith<_ExchangeResponse> get copyWith => __$ExchangeResponseCopyWithImpl<_ExchangeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExchangeResponse&&const DeepCollectionEquality().equals(other._result, _result)&&(identical(other.total, total) || other.total == total)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result),total,source);

@override
String toString() {
  return 'ExchangeResponse(result: $result, total: $total, source: $source)';
}


}

/// @nodoc
abstract mixin class _$ExchangeResponseCopyWith<$Res> implements $ExchangeResponseCopyWith<$Res> {
  factory _$ExchangeResponseCopyWith(_ExchangeResponse value, $Res Function(_ExchangeResponse) _then) = __$ExchangeResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Exchange> result, int total, String source
});




}
/// @nodoc
class __$ExchangeResponseCopyWithImpl<$Res>
    implements _$ExchangeResponseCopyWith<$Res> {
  __$ExchangeResponseCopyWithImpl(this._self, this._then);

  final _ExchangeResponse _self;
  final $Res Function(_ExchangeResponse) _then;

/// Create a copy of ExchangeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? total = null,Object? source = null,}) {
  return _then(_ExchangeResponse(
result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<Exchange>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
