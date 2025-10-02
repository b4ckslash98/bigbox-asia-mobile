import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetTalentJobsUsecase implements UseCase<GetTalentJobsResponse, NoParams> {
  final TalentJobsRepository repository;

  GetTalentJobsUsecase(this.repository);

  @override
  Future<Either<Failure, GetTalentJobsResponse>> call(NoParams params) async {
    return await repository.getTalentJobs();
  }
}
