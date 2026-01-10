import 'package:dcex/core/result.dart';
import 'package:dcex/shared/market/domain/entities/ticker.dart';

abstract class TickerRepository {
  /// Get the ticker of a pair
  Future<Result<TickerEntity>> getTicker(
    String exchange,
    String symbol,
    String marketType,
  );
}
