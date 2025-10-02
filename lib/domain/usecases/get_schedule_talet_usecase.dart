import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetScheduleTaletUsecase implements UseCase<GetScheduleTalent, NoParams> {
  final TalentHomeRepository repository;

  GetScheduleTaletUsecase(this.repository);

  @override
  Future<Either<Failure, GetScheduleTalent>> call(NoParams params) async {
    return await repository.talentGetSchedule();
  }
}
