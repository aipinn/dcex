import 'package:dcex/core/result.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';
import 'package:dcex/shared/market/domain/repositories/ticker_repository.dart';

class TickerUsecase {
  final TickerRepository _repository;
  TickerUsecase(this._repository);

  Future<Result<TickerEntity>> call(
    String exchange,
    String symbol,
    String marketType,
  ) async {
    return _repository.getTicker(exchange, symbol, marketType);
  }
}
