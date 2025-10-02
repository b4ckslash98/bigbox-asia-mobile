import 'dart:io';

import 'package:bigbox_asia/data/api/upload/upload_api.dart';
import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class PostUploadRepositoryImpl implements UploadRepository {
  final UploadApi api;
  final NetworkInfo networkInfo;

  PostUploadRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, Map<String, dynamic>>> uploadFile(File file) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.uploadFile(file);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}

//// data source(api)  -> repository -> usecase -> cubit -> ui
