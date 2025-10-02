import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class PostCreateScheduleTalentUsecase
    implements UseCase<bool, PostCreateScheduleTalentUsecaseParam> {
  final TalentHomeRepository repository;

  PostCreateScheduleTalentUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      PostCreateScheduleTalentUsecaseParam params) async {
    return await repository.talentCreateSchedule(params.data);
  }
}

class PostCreateScheduleTalentUsecaseParam {
  final Map<String, dynamic> data;

  const PostCreateScheduleTalentUsecaseParam({
    required this.data,
  });
}
