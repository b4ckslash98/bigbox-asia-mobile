import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAplicationClientJobUsecase
    implements
        UseCase<GetAplicationTalent, GetAplicationClientJobUsecaseParams> {
  final ClientJobsRepository repository;

  GetAplicationClientJobUsecase(this.repository);

  @override
  Future<Either<Failure, GetAplicationTalent>> call(
      GetAplicationClientJobUsecaseParams params) async {
    return await repository.getAplicationClientJobs(params.jobId);
  }
}

class GetAplicationClientJobUsecaseParams {
  final String jobId;

  GetAplicationClientJobUsecaseParams(this.jobId);
}
