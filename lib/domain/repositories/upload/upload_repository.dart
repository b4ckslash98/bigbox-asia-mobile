import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class UploadRepository {
  Future<Either<Failure, Map<String, dynamic>>> uploadFile(File file);
}
