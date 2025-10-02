import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetClientSearchTalentUsecase
    implements UseCase<GetClientSearchTalent, NoParams> {
  final ClientHomeRepository repository;

  GetClientSearchTalentUsecase(this.repository);

  @override
  Future<Either<Failure, GetClientSearchTalent>> call(NoParams params) async {
    return await repository.clientSearchTalent();
  }
}
