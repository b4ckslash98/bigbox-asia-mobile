import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminTotalClientUsecase
    implements UseCase<GetAdminTotalClient, NoParams> {
  final AdminHomeRepository repository;

  GetAdminTotalClientUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminTotalClient>> call(NoParams params) async {
    return await repository.adminTotalClient();
  }
}
