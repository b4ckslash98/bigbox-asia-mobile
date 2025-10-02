import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class TalentJobsRepository {
  Future<Either<Failure, GetTalentJobsResponse>> getTalentJobs();
  Future<Either<Failure, bool>> talentApplyJobs(String roleid, String jobId);
}
