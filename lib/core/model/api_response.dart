import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

/// Generic Api Response
@Freezed(genericArgumentFactories: true)
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required int code,
    required String msg,
    T? data,
    required int ts,
    String? type,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json)? fromJsonT,
  ) => _$ApiResponseFromJson(json, fromJsonT ?? (json) => json as T);
}

/// Base Api Response
// abstract class BaseApiResponse {
//   final int code;
//   final String msg;
//   final int ts;
//   final String? traceId;

//   const BaseApiResponse({
//     required this.code,
//     required this.msg,
//     required this.ts,
//     this.traceId,
//   });

//   bool get isSuccess => code == 200;
//   bool get hasError => code != 200;
//   String get errorMessage => isSuccess ? '' : msg;
// }
