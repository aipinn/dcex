// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritePair {

 Pair get pair; PairSummary get pairSummary;
/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritePairCopyWith<FavoritePair> get copyWith => _$FavoritePairCopyWithImpl<FavoritePair>(this as FavoritePair, _$identity);

  /// Serializes this FavoritePair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritePair&&(identical(other.pair, pair) || other.pair == pair)&&(identical(other.pairSummary, pairSummary) || other.pairSummary == pairSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pair,pairSummary);

@override
String toString() {
  return 'FavoritePair(pair: $pair, pairSummary: $pairSummary)';
}


}

/// @nodoc
abstract mixin class $FavoritePairCopyWith<$Res>  {
  factory $FavoritePairCopyWith(FavoritePair value, $Res Function(FavoritePair) _then) = _$FavoritePairCopyWithImpl;
@useResult
$Res call({
 Pair pair, PairSummary pairSummary
});


$PairCopyWith<$Res> get pair;$PairSummaryCopyWith<$Res> get pairSummary;

}
/// @nodoc
class _$FavoritePairCopyWithImpl<$Res>
    implements $FavoritePairCopyWith<$Res> {
  _$FavoritePairCopyWithImpl(this._self, this._then);

  final FavoritePair _self;
  final $Res Function(FavoritePair) _then;

/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pair = null,Object? pairSummary = null,}) {
  return _then(_self.copyWith(
pair: null == pair ? _self.pair : pair // ignore: cast_nullable_to_non_nullable
as Pair,pairSummary: null == pairSummary ? _self.pairSummary : pairSummary // ignore: cast_nullable_to_non_nullable
as PairSummary,
  ));
}
/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PairCopyWith<$Res> get pair {
  
  return $PairCopyWith<$Res>(_self.pair, (value) {
    return _then(_self.copyWith(pair: value));
  });
}/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PairSummaryCopyWith<$Res> get pairSummary {
  
  return $PairSummaryCopyWith<$Res>(_self.pairSummary, (value) {
    return _then(_self.copyWith(pairSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoritePair].
extension FavoritePairPatterns on FavoritePair {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritePair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritePair() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritePair value)  $default,){
final _that = this;
switch (_that) {
case _FavoritePair():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritePair value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritePair() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Pair pair,  PairSummary pairSummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritePair() when $default != null:
return $default(_that.pair,_that.pairSummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Pair pair,  PairSummary pairSummary)  $default,) {final _that = this;
switch (_that) {
case _FavoritePair():
return $default(_that.pair,_that.pairSummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Pair pair,  PairSummary pairSummary)?  $default,) {final _that = this;
switch (_that) {
case _FavoritePair() when $default != null:
return $default(_that.pair,_that.pairSummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoritePair implements FavoritePair {
  const _FavoritePair({required this.pair, required this.pairSummary});
  factory _FavoritePair.fromJson(Map<String, dynamic> json) => _$FavoritePairFromJson(json);

@override final  Pair pair;
@override final  PairSummary pairSummary;

/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritePairCopyWith<_FavoritePair> get copyWith => __$FavoritePairCopyWithImpl<_FavoritePair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoritePairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePair&&(identical(other.pair, pair) || other.pair == pair)&&(identical(other.pairSummary, pairSummary) || other.pairSummary == pairSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pair,pairSummary);

@override
String toString() {
  return 'FavoritePair(pair: $pair, pairSummary: $pairSummary)';
}


}

/// @nodoc
abstract mixin class _$FavoritePairCopyWith<$Res> implements $FavoritePairCopyWith<$Res> {
  factory _$FavoritePairCopyWith(_FavoritePair value, $Res Function(_FavoritePair) _then) = __$FavoritePairCopyWithImpl;
@override @useResult
$Res call({
 Pair pair, PairSummary pairSummary
});


@override $PairCopyWith<$Res> get pair;@override $PairSummaryCopyWith<$Res> get pairSummary;

}
/// @nodoc
class __$FavoritePairCopyWithImpl<$Res>
    implements _$FavoritePairCopyWith<$Res> {
  __$FavoritePairCopyWithImpl(this._self, this._then);

  final _FavoritePair _self;
  final $Res Function(_FavoritePair) _then;

/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pair = null,Object? pairSummary = null,}) {
  return _then(_FavoritePair(
pair: null == pair ? _self.pair : pair // ignore: cast_nullable_to_non_nullable
as Pair,pairSummary: null == pairSummary ? _self.pairSummary : pairSummary // ignore: cast_nullable_to_non_nullable
as PairSummary,
  ));
}

/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PairCopyWith<$Res> get pair {
  
  return $PairCopyWith<$Res>(_self.pair, (value) {
    return _then(_self.copyWith(pair: value));
  });
}/// Create a copy of FavoritePair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PairSummaryCopyWith<$Res> get pairSummary {
  
  return $PairSummaryCopyWith<$Res>(_self.pairSummary, (value) {
    return _then(_self.copyWith(pairSummary: value));
  });
}
}

// dart format on
