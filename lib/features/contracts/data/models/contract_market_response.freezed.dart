// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_market_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContractMarketResponse {

 List<ContractMarketModel> get result; Map<String, dynamic> get pagination;
/// Create a copy of ContractMarketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractMarketResponseCopyWith<ContractMarketResponse> get copyWith => _$ContractMarketResponseCopyWithImpl<ContractMarketResponse>(this as ContractMarketResponse, _$identity);

  /// Serializes this ContractMarketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractMarketResponse&&const DeepCollectionEquality().equals(other.result, result)&&const DeepCollectionEquality().equals(other.pagination, pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(result),const DeepCollectionEquality().hash(pagination));

@override
String toString() {
  return 'ContractMarketResponse(result: $result, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ContractMarketResponseCopyWith<$Res>  {
  factory $ContractMarketResponseCopyWith(ContractMarketResponse value, $Res Function(ContractMarketResponse) _then) = _$ContractMarketResponseCopyWithImpl;
@useResult
$Res call({
 List<ContractMarketModel> result, Map<String, dynamic> pagination
});




}
/// @nodoc
class _$ContractMarketResponseCopyWithImpl<$Res>
    implements $ContractMarketResponseCopyWith<$Res> {
  _$ContractMarketResponseCopyWithImpl(this._self, this._then);

  final ContractMarketResponse _self;
  final $Res Function(ContractMarketResponse) _then;

/// Create a copy of ContractMarketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as List<ContractMarketModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContractMarketResponse].
extension ContractMarketResponsePatterns on ContractMarketResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContractMarketResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContractMarketResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContractMarketResponse value)  $default,){
final _that = this;
switch (_that) {
case _ContractMarketResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContractMarketResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ContractMarketResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ContractMarketModel> result,  Map<String, dynamic> pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContractMarketResponse() when $default != null:
return $default(_that.result,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ContractMarketModel> result,  Map<String, dynamic> pagination)  $default,) {final _that = this;
switch (_that) {
case _ContractMarketResponse():
return $default(_that.result,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ContractMarketModel> result,  Map<String, dynamic> pagination)?  $default,) {final _that = this;
switch (_that) {
case _ContractMarketResponse() when $default != null:
return $default(_that.result,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContractMarketResponse implements ContractMarketResponse {
  const _ContractMarketResponse({required final  List<ContractMarketModel> result, required final  Map<String, dynamic> pagination}): _result = result,_pagination = pagination;
  factory _ContractMarketResponse.fromJson(Map<String, dynamic> json) => _$ContractMarketResponseFromJson(json);

 final  List<ContractMarketModel> _result;
@override List<ContractMarketModel> get result {
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_result);
}

 final  Map<String, dynamic> _pagination;
@override Map<String, dynamic> get pagination {
  if (_pagination is EqualUnmodifiableMapView) return _pagination;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_pagination);
}


/// Create a copy of ContractMarketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractMarketResponseCopyWith<_ContractMarketResponse> get copyWith => __$ContractMarketResponseCopyWithImpl<_ContractMarketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContractMarketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContractMarketResponse&&const DeepCollectionEquality().equals(other._result, _result)&&const DeepCollectionEquality().equals(other._pagination, _pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result),const DeepCollectionEquality().hash(_pagination));

@override
String toString() {
  return 'ContractMarketResponse(result: $result, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ContractMarketResponseCopyWith<$Res> implements $ContractMarketResponseCopyWith<$Res> {
  factory _$ContractMarketResponseCopyWith(_ContractMarketResponse value, $Res Function(_ContractMarketResponse) _then) = __$ContractMarketResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ContractMarketModel> result, Map<String, dynamic> pagination
});




}
/// @nodoc
class __$ContractMarketResponseCopyWithImpl<$Res>
    implements _$ContractMarketResponseCopyWith<$Res> {
  __$ContractMarketResponseCopyWithImpl(this._self, this._then);

  final _ContractMarketResponse _self;
  final $Res Function(_ContractMarketResponse) _then;

/// Create a copy of ContractMarketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? pagination = null,}) {
  return _then(_ContractMarketResponse(
result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<ContractMarketModel>,pagination: null == pagination ? _self._pagination : pagination // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
