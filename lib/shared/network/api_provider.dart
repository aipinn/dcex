import 'package:dcex/constants/api_const.dart';
import 'package:dcex/shared/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider = Provider((ref) {
  final dio = Dio(BaseOptions(baseUrl: baseurl));
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        //   logInfo('''Dio on request:
        // method: ${options.method},
        // path: ${options.path},
        // params: ${options.queryParameters}''');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (error, handler) {
        return handler.next(error);
      },
    ),
  );
  return dio;
});
