import 'package:dcex/features/details/data/models/markets/pair/pair.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_response.freezed.dart';
part 'market_response.g.dart';

@freezed
abstract class ResultWrapper with _$ResultWrapper {
  const factory ResultWrapper({
    required List<Pair> spot,
    required List<Pair> future,
    required List<Pair> option,
  }) = _ResultWrapper;

  factory ResultWrapper.fromJson(Map<String, dynamic> json) =>
      _$ResultWrapperFromJson(json);
}

@freezed
abstract class MarketResponse with _$MarketResponse {
  const factory MarketResponse({
    required ResultWrapper result,
    required List<String> groups,
    String? mode,
    int? total,
    int? page,
    int? pageSize,
    String? market,
    String? exchange,
  }) = _MarketResponse;

  factory MarketResponse.fromJson(Map<String, dynamic> json) =>
      _$MarketResponseFromJson(json);
}
