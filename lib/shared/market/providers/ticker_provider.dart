import 'package:dcex/shared/market/data/repositories/ticker_repository_impl.dart';
import 'package:dcex/shared/market/domain/usecases/ticker_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getTickerUsecaseProvider = Provider<TickerUsecase>((ref) {
  return TickerUsecase(ref.watch(tickerRepositoryProvider));
});
