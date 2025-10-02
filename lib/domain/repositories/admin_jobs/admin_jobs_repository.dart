import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class AdminJobsRepository {
  Future<Either<Failure, bool>> adminApproveJobs(
      String jobId, Map<String, dynamic> data);

  Future<Either<Failure, bool>> adminModerasiBudgetJobs(
      String jobId, List<Map<String, dynamic>> data);
}
