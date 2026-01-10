import 'package:dcex/features/contracts/data/repositories/contract_repository_impl.dart';
import 'package:dcex/features/contracts/domain/usecases/get_contract_markets_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contractMarketUsecaseProvider = Provider<GetContractMarketsUsecase>((
  ref,
) {
  return GetContractMarketsUsecase(ref.watch(contractRepositoryProvider));
});
