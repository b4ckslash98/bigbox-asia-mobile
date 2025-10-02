import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class PostAdminAddTalentUsecase
    implements UseCase<bool, PostAdminAddTalentUsecaseParam> {
  final AdminHomeRepository repository;

  PostAdminAddTalentUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      PostAdminAddTalentUsecaseParam params) async {
    return await repository.adminAddTalent(params.data);
  }
}

class PostAdminAddTalentUsecaseParam {
  final Map<String, dynamic> data;

  const PostAdminAddTalentUsecaseParam({
    required this.data,
  });
}
