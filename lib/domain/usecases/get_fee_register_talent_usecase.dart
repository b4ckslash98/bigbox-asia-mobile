import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetFeeRegisterTalentUsecase
    implements UseCase<GetFeeRegisterTalent, NoParams> {
  final PaymentRepository repository;

  GetFeeRegisterTalentUsecase(this.repository);

  @override
  Future<Either<Failure, GetFeeRegisterTalent>> call(NoParams params) async {
    return await repository.getFeeRegisterTalent();
  }
}
