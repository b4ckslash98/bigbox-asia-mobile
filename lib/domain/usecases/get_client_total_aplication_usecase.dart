import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetClientTotalApplicationUsecase
    implements UseCase<GetAdminTotalTalent, NoParams> {
  final ClientHomeRepository repository;

  GetClientTotalApplicationUsecase(this.repository);

  @override
  Future<Either<Failure, GetAdminTotalTalent>> call(NoParams params) async {
    return await repository.clientTotalApplications();
  }
}
