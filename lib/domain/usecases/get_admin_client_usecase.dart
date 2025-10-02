import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminClientUsecase implements UseCase<GetAdminClient, NoParams> {
  final AdminHomeRepository repository;

  GetAdminClientUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminClient>> call(NoParams params) async {
    return await repository.adminGetClient();
  }
}
