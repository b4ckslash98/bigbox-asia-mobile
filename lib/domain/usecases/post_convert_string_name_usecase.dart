import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class PostConvertStringNameUsecase
    implements UseCase<String, PostConvertStringNameUsecaseParam> {
  final AuthRepository repository;

  PostConvertStringNameUsecase(this.repository);

  @override
  Future<Either<Failure, String>> call(
      PostConvertStringNameUsecaseParam params) async {
    return await repository.convertStringName(params.name);
  }
}

class PostConvertStringNameUsecaseParam {
  final String name;

  const PostConvertStringNameUsecaseParam({
    required this.name,
  });
}
