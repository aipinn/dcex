// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoritePair _$FavoritePairFromJson(Map<String, dynamic> json) =>
    _FavoritePair(
      pair: Pair.fromJson(json['pair'] as Map<String, dynamic>),
      pairSummary: PairSummary.fromJson(
        json['pairSummary'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FavoritePairToJson(_FavoritePair instance) =>
    <String, dynamic>{
      'pair': instance.pair,
      'pairSummary': instance.pairSummary,
    };
