import 'package:dcex/core/result.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;
  ApiClient(this._dio);

  Future<Result> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return Result.success(response.data);
    } on DioException catch (e) {
      return Result.failure(e.message ?? 'Network error');
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
