import 'package:dartz/dartz.dart';

import '../../lib.dart';

class PutClientChangeStatusApplicationUsecase
    implements UseCase<bool, PutClientChangeStatusApplicationUsecaseParams> {
  final ClientJobsRepository repository;

  PutClientChangeStatusApplicationUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      PutClientChangeStatusApplicationUsecaseParams params) async {
    return await repository.clientChangeStatusApplication(
        params.data, params.jobId);
  }
}

class PutClientChangeStatusApplicationUsecaseParams {
  final String jobId;
  final Map<String, dynamic> data;

  const PutClientChangeStatusApplicationUsecaseParams(
      {required this.jobId, required this.data});
}
