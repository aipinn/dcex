// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsDetail {

 String get currentLanguage; String get favoriteExchange; String get favoritePair; String get themeMode;
/// Create a copy of SettingsDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsDetailCopyWith<SettingsDetail> get copyWith => _$SettingsDetailCopyWithImpl<SettingsDetail>(this as SettingsDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsDetail&&(identical(other.currentLanguage, currentLanguage) || other.currentLanguage == currentLanguage)&&(identical(other.favoriteExchange, favoriteExchange) || other.favoriteExchange == favoriteExchange)&&(identical(other.favoritePair, favoritePair) || other.favoritePair == favoritePair)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,currentLanguage,favoriteExchange,favoritePair,themeMode);

@override
String toString() {
  return 'SettingsDetail(currentLanguage: $currentLanguage, favoriteExchange: $favoriteExchange, favoritePair: $favoritePair, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $SettingsDetailCopyWith<$Res>  {
  factory $SettingsDetailCopyWith(SettingsDetail value, $Res Function(SettingsDetail) _then) = _$SettingsDetailCopyWithImpl;
@useResult
$Res call({
 String currentLanguage, String favoriteExchange, String favoritePair, String themeMode
});




}
/// @nodoc
class _$SettingsDetailCopyWithImpl<$Res>
    implements $SettingsDetailCopyWith<$Res> {
  _$SettingsDetailCopyWithImpl(this._self, this._then);

  final SettingsDetail _self;
  final $Res Function(SettingsDetail) _then;

/// Create a copy of SettingsDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentLanguage = null,Object? favoriteExchange = null,Object? favoritePair = null,Object? themeMode = null,}) {
  return _then(_self.copyWith(
currentLanguage: null == currentLanguage ? _self.currentLanguage : currentLanguage // ignore: cast_nullable_to_non_nullable
as String,favoriteExchange: null == favoriteExchange ? _self.favoriteExchange : favoriteExchange // ignore: cast_nullable_to_non_nullable
as String,favoritePair: null == favoritePair ? _self.favoritePair : favoritePair // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsDetail].
extension SettingsDetailPatterns on SettingsDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsDetail value)  $default,){
final _that = this;
switch (_that) {
case _SettingsDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsDetail value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currentLanguage,  String favoriteExchange,  String favoritePair,  String themeMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsDetail() when $default != null:
return $default(_that.currentLanguage,_that.favoriteExchange,_that.favoritePair,_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currentLanguage,  String favoriteExchange,  String favoritePair,  String themeMode)  $default,) {final _that = this;
switch (_that) {
case _SettingsDetail():
return $default(_that.currentLanguage,_that.favoriteExchange,_that.favoritePair,_that.themeMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currentLanguage,  String favoriteExchange,  String favoritePair,  String themeMode)?  $default,) {final _that = this;
switch (_that) {
case _SettingsDetail() when $default != null:
return $default(_that.currentLanguage,_that.favoriteExchange,_that.favoritePair,_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsDetail implements SettingsDetail {
  const _SettingsDetail({required this.currentLanguage, required this.favoriteExchange, required this.favoritePair, required this.themeMode});
  

@override final  String currentLanguage;
@override final  String favoriteExchange;
@override final  String favoritePair;
@override final  String themeMode;

/// Create a copy of SettingsDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsDetailCopyWith<_SettingsDetail> get copyWith => __$SettingsDetailCopyWithImpl<_SettingsDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsDetail&&(identical(other.currentLanguage, currentLanguage) || other.currentLanguage == currentLanguage)&&(identical(other.favoriteExchange, favoriteExchange) || other.favoriteExchange == favoriteExchange)&&(identical(other.favoritePair, favoritePair) || other.favoritePair == favoritePair)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,currentLanguage,favoriteExchange,favoritePair,themeMode);

@override
String toString() {
  return 'SettingsDetail(currentLanguage: $currentLanguage, favoriteExchange: $favoriteExchange, favoritePair: $favoritePair, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$SettingsDetailCopyWith<$Res> implements $SettingsDetailCopyWith<$Res> {
  factory _$SettingsDetailCopyWith(_SettingsDetail value, $Res Function(_SettingsDetail) _then) = __$SettingsDetailCopyWithImpl;
@override @useResult
$Res call({
 String currentLanguage, String favoriteExchange, String favoritePair, String themeMode
});




}
/// @nodoc
class __$SettingsDetailCopyWithImpl<$Res>
    implements _$SettingsDetailCopyWith<$Res> {
  __$SettingsDetailCopyWithImpl(this._self, this._then);

  final _SettingsDetail _self;
  final $Res Function(_SettingsDetail) _then;

/// Create a copy of SettingsDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentLanguage = null,Object? favoriteExchange = null,Object? favoritePair = null,Object? themeMode = null,}) {
  return _then(_SettingsDetail(
currentLanguage: null == currentLanguage ? _self.currentLanguage : currentLanguage // ignore: cast_nullable_to_non_nullable
as String,favoriteExchange: null == favoriteExchange ? _self.favoriteExchange : favoriteExchange // ignore: cast_nullable_to_non_nullable
as String,favoritePair: null == favoritePair ? _self.favoritePair : favoritePair // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
