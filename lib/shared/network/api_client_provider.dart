import 'package:dcex/shared/network/api_client.dart';
import 'package:dcex/shared/network/dio_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiClient(dio);
});
