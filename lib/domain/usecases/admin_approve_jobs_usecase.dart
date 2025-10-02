import 'package:dartz/dartz.dart';

import '../../lib.dart';

class AdminApproveJobsUsecase
    implements UseCase<bool, AdminApproveJobsUsecaseParams> {
  final AdminJobsRepository repository;

  AdminApproveJobsUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      AdminApproveJobsUsecaseParams params) async {
    return await repository.adminApproveJobs(params.jobId, params.data);
  }
}

class AdminApproveJobsUsecaseParams {
  final String jobId;
  final Map<String, dynamic> data;

  AdminApproveJobsUsecaseParams(this.jobId, this.data);
}
