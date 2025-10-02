import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class PostUploadUsecase
    implements UseCase<Map<String, dynamic>, PostUploadParam> {
  final UploadRepository repository;

  PostUploadUsecase(this.repository);

  @override
  Future<Either<Failure, Map<String, dynamic>>> call(
      PostUploadParam params) async {
    return await repository.uploadFile(params.file);
  }
}

class PostUploadParam {
  final File file;

  const PostUploadParam({required this.file});
}
