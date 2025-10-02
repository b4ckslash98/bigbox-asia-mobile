import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class CompleteProfileTalentUseCase
    implements UseCase<bool, CompleteProfileTalentParam> {
  final AuthRepository repository;

  CompleteProfileTalentUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(CompleteProfileTalentParam params) async {
    return await repository.completeProfileTalent(params.data);
  }
}

class CompleteProfileTalentParam {
  final Map<String, dynamic> data;

  const CompleteProfileTalentParam({required this.data});
}
