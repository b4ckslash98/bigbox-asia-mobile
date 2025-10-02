import 'package:dartz/dartz.dart';

import '../../lib.dart';

class ClientCreateJobsUsecase implements UseCase<bool, ClientCreateJobsParam> {
  final ClientJobsRepository repository;

  ClientCreateJobsUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(ClientCreateJobsParam params) async {
    return await repository.createJob(params.data);
  }
}

class ClientCreateJobsParam {
  final Map<String, dynamic> data;

  const ClientCreateJobsParam({required this.data});
}
