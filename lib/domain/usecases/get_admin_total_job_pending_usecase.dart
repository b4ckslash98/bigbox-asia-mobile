import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminTotalJobPendingUsecase
    implements UseCase<GetAdminTotalJobPending, NoParams> {
  final AdminHomeRepository repository;

  GetAdminTotalJobPendingUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminTotalJobPending>> call(NoParams params) async {
    return await repository.adminTotalJobPending();
  }
}
