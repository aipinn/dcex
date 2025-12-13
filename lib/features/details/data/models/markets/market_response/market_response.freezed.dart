// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultWrapper {

 List<Pair> get spot; List<Pair> get future; List<Pair> get option;
/// Create a copy of ResultWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultWrapperCopyWith<ResultWrapper> get copyWith => _$ResultWrapperCopyWithImpl<ResultWrapper>(this as ResultWrapper, _$identity);

  /// Serializes this ResultWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultWrapper&&const DeepCollectionEquality().equals(other.spot, spot)&&const DeepCollectionEquality().equals(other.future, future)&&const DeepCollectionEquality().equals(other.option, option));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spot),const DeepCollectionEquality().hash(future),const DeepCollectionEquality().hash(option));

@override
String toString() {
  return 'ResultWrapper(spot: $spot, future: $future, option: $option)';
}


}

/// @nodoc
abstract mixin class $ResultWrapperCopyWith<$Res>  {
  factory $ResultWrapperCopyWith(ResultWrapper value, $Res Function(ResultWrapper) _then) = _$ResultWrapperCopyWithImpl;
@useResult
$Res call({
 List<Pair> spot, List<Pair> future, List<Pair> option
});




}
/// @nodoc
class _$ResultWrapperCopyWithImpl<$Res>
    implements $ResultWrapperCopyWith<$Res> {
  _$ResultWrapperCopyWithImpl(this._self, this._then);

  final ResultWrapper _self;
  final $Res Function(ResultWrapper) _then;

/// Create a copy of ResultWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spot = null,Object? future = null,Object? option = null,}) {
  return _then(_self.copyWith(
spot: null == spot ? _self.spot : spot // ignore: cast_nullable_to_non_nullable
as List<Pair>,future: null == future ? _self.future : future // ignore: cast_nullable_to_non_nullable
as List<Pair>,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as List<Pair>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResultWrapper].
extension ResultWrapperPatterns on ResultWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResultWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResultWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResultWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ResultWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResultWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ResultWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Pair> spot,  List<Pair> future,  List<Pair> option)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResultWrapper() when $default != null:
return $default(_that.spot,_that.future,_that.option);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Pair> spot,  List<Pair> future,  List<Pair> option)  $default,) {final _that = this;
switch (_that) {
case _ResultWrapper():
return $default(_that.spot,_that.future,_that.option);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Pair> spot,  List<Pair> future,  List<Pair> option)?  $default,) {final _that = this;
switch (_that) {
case _ResultWrapper() when $default != null:
return $default(_that.spot,_that.future,_that.option);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResultWrapper implements ResultWrapper {
  const _ResultWrapper({required final  List<Pair> spot, required final  List<Pair> future, required final  List<Pair> option}): _spot = spot,_future = future,_option = option;
  factory _ResultWrapper.fromJson(Map<String, dynamic> json) => _$ResultWrapperFromJson(json);

 final  List<Pair> _spot;
@override List<Pair> get spot {
  if (_spot is EqualUnmodifiableListView) return _spot;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spot);
}

 final  List<Pair> _future;
@override List<Pair> get future {
  if (_future is EqualUnmodifiableListView) return _future;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_future);
}

 final  List<Pair> _option;
@override List<Pair> get option {
  if (_option is EqualUnmodifiableListView) return _option;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_option);
}


/// Create a copy of ResultWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultWrapperCopyWith<_ResultWrapper> get copyWith => __$ResultWrapperCopyWithImpl<_ResultWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResultWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultWrapper&&const DeepCollectionEquality().equals(other._spot, _spot)&&const DeepCollectionEquality().equals(other._future, _future)&&const DeepCollectionEquality().equals(other._option, _option));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_spot),const DeepCollectionEquality().hash(_future),const DeepCollectionEquality().hash(_option));

@override
String toString() {
  return 'ResultWrapper(spot: $spot, future: $future, option: $option)';
}


}

/// @nodoc
abstract mixin class _$ResultWrapperCopyWith<$Res> implements $ResultWrapperCopyWith<$Res> {
  factory _$ResultWrapperCopyWith(_ResultWrapper value, $Res Function(_ResultWrapper) _then) = __$ResultWrapperCopyWithImpl;
@override @useResult
$Res call({
 List<Pair> spot, List<Pair> future, List<Pair> option
});




}
/// @nodoc
class __$ResultWrapperCopyWithImpl<$Res>
    implements _$ResultWrapperCopyWith<$Res> {
  __$ResultWrapperCopyWithImpl(this._self, this._then);

  final _ResultWrapper _self;
  final $Res Function(_ResultWrapper) _then;

/// Create a copy of ResultWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spot = null,Object? future = null,Object? option = null,}) {
  return _then(_ResultWrapper(
spot: null == spot ? _self._spot : spot // ignore: cast_nullable_to_non_nullable
as List<Pair>,future: null == future ? _self._future : future // ignore: cast_nullable_to_non_nullable
as List<Pair>,option: null == option ? _self._option : option // ignore: cast_nullable_to_non_nullable
as List<Pair>,
  ));
}


}


/// @nodoc
mixin _$MarketResponse {

 ResultWrapper get result; List<String> get groups; String? get mode; int? get total; int? get page; int? get pageSize; String? get market; String? get exchange;
/// Create a copy of MarketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketResponseCopyWith<MarketResponse> get copyWith => _$MarketResponseCopyWithImpl<MarketResponse>(this as MarketResponse, _$identity);

  /// Serializes this MarketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketResponse&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other.groups, groups)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.market, market) || other.market == market)&&(identical(other.exchange, exchange) || other.exchange == exchange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result,const DeepCollectionEquality().hash(groups),mode,total,page,pageSize,market,exchange);

@override
String toString() {
  return 'MarketResponse(result: $result, groups: $groups, mode: $mode, total: $total, page: $page, pageSize: $pageSize, market: $market, exchange: $exchange)';
}


}

/// @nodoc
abstract mixin class $MarketResponseCopyWith<$Res>  {
  factory $MarketResponseCopyWith(MarketResponse value, $Res Function(MarketResponse) _then) = _$MarketResponseCopyWithImpl;
@useResult
$Res call({
 ResultWrapper result, List<String> groups, String? mode, int? total, int? page, int? pageSize, String? market, String? exchange
});


$ResultWrapperCopyWith<$Res> get result;

}
/// @nodoc
class _$MarketResponseCopyWithImpl<$Res>
    implements $MarketResponseCopyWith<$Res> {
  _$MarketResponseCopyWithImpl(this._self, this._then);

  final MarketResponse _self;
  final $Res Function(MarketResponse) _then;

/// Create a copy of MarketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? groups = null,Object? mode = freezed,Object? total = freezed,Object? page = freezed,Object? pageSize = freezed,Object? market = freezed,Object? exchange = freezed,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultWrapper,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<String>,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as String?,exchange: freezed == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MarketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultWrapperCopyWith<$Res> get result {
  
  return $ResultWrapperCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [MarketResponse].
extension MarketResponsePatterns on MarketResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketResponse value)  $default,){
final _that = this;
switch (_that) {
case _MarketResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MarketResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ResultWrapper result,  List<String> groups,  String? mode,  int? total,  int? page,  int? pageSize,  String? market,  String? exchange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketResponse() when $default != null:
return $default(_that.result,_that.groups,_that.mode,_that.total,_that.page,_that.pageSize,_that.market,_that.exchange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ResultWrapper result,  List<String> groups,  String? mode,  int? total,  int? page,  int? pageSize,  String? market,  String? exchange)  $default,) {final _that = this;
switch (_that) {
case _MarketResponse():
return $default(_that.result,_that.groups,_that.mode,_that.total,_that.page,_that.pageSize,_that.market,_that.exchange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ResultWrapper result,  List<String> groups,  String? mode,  int? total,  int? page,  int? pageSize,  String? market,  String? exchange)?  $default,) {final _that = this;
switch (_that) {
case _MarketResponse() when $default != null:
return $default(_that.result,_that.groups,_that.mode,_that.total,_that.page,_that.pageSize,_that.market,_that.exchange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketResponse implements MarketResponse {
  const _MarketResponse({required this.result, required final  List<String> groups, this.mode, this.total, this.page, this.pageSize, this.market, this.exchange}): _groups = groups;
  factory _MarketResponse.fromJson(Map<String, dynamic> json) => _$MarketResponseFromJson(json);

@override final  ResultWrapper result;
 final  List<String> _groups;
@override List<String> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}

@override final  String? mode;
@override final  int? total;
@override final  int? page;
@override final  int? pageSize;
@override final  String? market;
@override final  String? exchange;

/// Create a copy of MarketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketResponseCopyWith<_MarketResponse> get copyWith => __$MarketResponseCopyWithImpl<_MarketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketResponse&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other._groups, _groups)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.market, market) || other.market == market)&&(identical(other.exchange, exchange) || other.exchange == exchange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result,const DeepCollectionEquality().hash(_groups),mode,total,page,pageSize,market,exchange);

@override
String toString() {
  return 'MarketResponse(result: $result, groups: $groups, mode: $mode, total: $total, page: $page, pageSize: $pageSize, market: $market, exchange: $exchange)';
}


}

/// @nodoc
abstract mixin class _$MarketResponseCopyWith<$Res> implements $MarketResponseCopyWith<$Res> {
  factory _$MarketResponseCopyWith(_MarketResponse value, $Res Function(_MarketResponse) _then) = __$MarketResponseCopyWithImpl;
@override @useResult
$Res call({
 ResultWrapper result, List<String> groups, String? mode, int? total, int? page, int? pageSize, String? market, String? exchange
});


@override $ResultWrapperCopyWith<$Res> get result;

}
/// @nodoc
class __$MarketResponseCopyWithImpl<$Res>
    implements _$MarketResponseCopyWith<$Res> {
  __$MarketResponseCopyWithImpl(this._self, this._then);

  final _MarketResponse _self;
  final $Res Function(_MarketResponse) _then;

/// Create a copy of MarketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? groups = null,Object? mode = freezed,Object? total = freezed,Object? page = freezed,Object? pageSize = freezed,Object? market = freezed,Object? exchange = freezed,}) {
  return _then(_MarketResponse(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultWrapper,groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<String>,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as String?,exchange: freezed == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MarketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultWrapperCopyWith<$Res> get result {
  
  return $ResultWrapperCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
