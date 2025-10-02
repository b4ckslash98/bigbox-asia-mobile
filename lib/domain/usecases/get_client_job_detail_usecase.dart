import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetClientJobDetailUsecase
    implements UseCase<GetDetailJobsResponse, GetClientJobDetailUsecaseParams> {
  final ClientJobsRepository repository;

  GetClientJobDetailUsecase(this.repository);

  @override
  Future<Either<Failure, GetDetailJobsResponse>> call(
      GetClientJobDetailUsecaseParams params) async {
    return await repository.getDetailJobs(params.jobId);
  }
}

class GetClientJobDetailUsecaseParams {
  final String jobId;

  GetClientJobDetailUsecaseParams(this.jobId);
}
