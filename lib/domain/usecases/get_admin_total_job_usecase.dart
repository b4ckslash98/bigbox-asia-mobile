import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminTotalJobUsecase implements UseCase<GetAdminTotalJob, NoParams> {
  final AdminHomeRepository repository;

  GetAdminTotalJobUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminTotalJob>> call(NoParams params) async {
    return await repository.adminTotalJob();
  }
}
