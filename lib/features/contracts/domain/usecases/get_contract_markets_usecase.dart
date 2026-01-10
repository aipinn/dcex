import 'package:dcex/core/result.dart';
import 'package:dcex/features/contracts/domain/entities/contract_market.dart';
import 'package:dcex/features/contracts/domain/repositories/contract_repository.dart';

class GetContractMarketsUsecase {
  final ContractRepository _repository;
  const GetContractMarketsUsecase(this._repository);

  Future<Result<List<ContractMarket>>> callLinears(String exchange) =>
      _repository.getContractLinears(exchange);

  Future<Result<List<ContractMarket>>> callInverse(String exchange) =>
      _repository.getContractInverse(exchange);
}
