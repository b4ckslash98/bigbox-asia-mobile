import 'package:dartz/dartz.dart';

import '../../lib.dart';

class PutAdminModerasiBudgetJobsUsecase
    implements UseCase<bool, PutAdminModerasiBudgetJobsUsecaseParams> {
  final AdminJobsRepository repository;

  PutAdminModerasiBudgetJobsUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      PutAdminModerasiBudgetJobsUsecaseParams params) async {
    return await repository.adminModerasiBudgetJobs(params.jobId, params.data);
  }
}

class PutAdminModerasiBudgetJobsUsecaseParams {
  final String jobId;
  final List<Map<String, dynamic>> data;

  const PutAdminModerasiBudgetJobsUsecaseParams(
      {required this.jobId, required this.data});
}
