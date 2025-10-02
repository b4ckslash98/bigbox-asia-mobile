import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetClientMyJobUsecase implements UseCase<GetClientMyJobModel, NoParams> {
  final ClientJobsRepository repository;

  GetClientMyJobUsecase(this.repository);

  @override
  Future<Either<Failure, GetClientMyJobModel>> call(NoParams params) async {
    return await repository.getMyJobs();
  }
}
