import 'package:dcex/constants/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) => dio(ref));

Dio dio(Ref ref) {
  final dio = Dio();

  dio.options.baseUrl = AppConstants.baseurl;
  dio.options.connectTimeout = const Duration(milliseconds: 30000);
  dio.options.receiveTimeout = const Duration(milliseconds: 30000);
  dio.options.headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  dio.interceptors.add(
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ),
  );
  return dio;
}
