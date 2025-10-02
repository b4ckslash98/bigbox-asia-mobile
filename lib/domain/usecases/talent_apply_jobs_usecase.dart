import 'package:dartz/dartz.dart';

import '../../lib.dart';

class TalentApplyJobsUsecase
    implements UseCase<bool, TalentApplyJobsUsecaseParams> {
  final TalentJobsRepository repository;

  TalentApplyJobsUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      TalentApplyJobsUsecaseParams params) async {
    return await repository.talentApplyJobs(params.roleid, params.jobId);
  }
}

class TalentApplyJobsUsecaseParams {
  final String roleid;
  final String jobId;

  TalentApplyJobsUsecaseParams(this.roleid, this.jobId);
}
