import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminTotalTalentUsecase
    implements UseCase<GetAdminTotalTalent, NoParams> {
  final AdminHomeRepository repository;

  GetAdminTotalTalentUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminTotalTalent>> call(NoParams params) async {
    return await repository.adminTotalTalent();
  }
}
