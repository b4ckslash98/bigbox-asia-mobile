import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminTalentUsecase implements UseCase<GetAdminUser, NoParams> {
  final AdminUserRepository repository;

  GetAdminTalentUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminUser>> call(NoParams params) async {
    return await repository.getAdminTalent();
  }
}
