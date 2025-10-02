import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetClientUpdateJobUsecase
    implements UseCase<bool, GetClientUpdateJobUsecaseParams> {
  final ClientJobsRepository repository;

  GetClientUpdateJobUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      GetClientUpdateJobUsecaseParams params) async {
    return await repository.updateJobs(params.data, params.jobId);
  }
}

class GetClientUpdateJobUsecaseParams {
  final Map<String, dynamic> data;
  final String jobId;

  const GetClientUpdateJobUsecaseParams(
      {required this.data, required this.jobId});
}
