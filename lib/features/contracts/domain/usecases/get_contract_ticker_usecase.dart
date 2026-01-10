import 'package:dcex/core/result.dart';
import 'package:dcex/features/contracts/domain/entities/contract_ticker.dart';
import 'package:dcex/features/contracts/domain/repositories/contract_repository.dart';

class GetContractTickerUsecase {
  final ContractRepository _repository;
  GetContractTickerUsecase(this._repository);

  Future<Result<ContractTicker>> call(String symbol, String exchange) =>
      _repository.getContractTicker(symbol, exchange);
}
