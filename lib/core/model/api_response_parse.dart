import 'package:dcex/core/model/api_response.dart';

ApiResponse<T> parseApiResponse<T>(
  Map<String, dynamic> json,
  T Function(Map<String, dynamic>) fromJsonT,
) {
  return ApiResponse<T>.fromJson(
    json,
    (obj) => fromJsonT(obj as Map<String, dynamic>),
  );
}
