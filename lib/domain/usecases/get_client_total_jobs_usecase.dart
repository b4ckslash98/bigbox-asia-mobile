import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetClientTotalJobsUsecase
    implements UseCase<GetAdminTotalTalent, NoParams> {
  final ClientHomeRepository repository;

  GetClientTotalJobsUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminTotalTalent>> call(NoParams params) async {
    return await repository.clientTotalJobs();
  }
}
