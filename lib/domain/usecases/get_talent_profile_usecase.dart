import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class GetTalentProfileUsecase implements UseCase<GetTalentProfile, NoParams> {
  final AuthRepository repository;

  GetTalentProfileUsecase(this.repository);

  @override
  Future<Either<Failure, GetTalentProfile>> call(NoParams params) async {
    return await repository.getProfile();
  }
}
