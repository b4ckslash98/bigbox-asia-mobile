import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetMasterPaymentCodeUsecase
    implements UseCase<MasterPaymentCode, NoParams> {
  final AdminHomeRepository repository;

  GetMasterPaymentCodeUsecase(this.repository);

  @override
  Future<Either<Failure, MasterPaymentCode>> call(NoParams params) async {
    return await repository.getMasterPaymentCode();
  }
}
