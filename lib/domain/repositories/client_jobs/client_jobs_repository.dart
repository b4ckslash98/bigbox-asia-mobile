import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class ClientJobsRepository {
  Future<Either<Failure, bool>> createJob(Map<String, dynamic> data);
  Future<Either<Failure, GetClientMyJobModel>> getMyJobs();
  Future<Either<Failure, GetDetailJobsResponse>> getDetailJobs(String jobId);
  Future<Either<Failure, bool>> updateJobs(
      Map<String, dynamic> data, String jobId);
  Future<Either<Failure, GetAplicationTalent>> getAplicationClientJobs(
      String jobId);
  Future<Either<Failure, bool>> clientChangeStatusApplication(
      Map<String, dynamic> data, String jobId);
}
