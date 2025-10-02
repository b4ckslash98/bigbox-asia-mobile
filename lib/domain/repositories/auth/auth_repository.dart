import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class AuthRepository {
  Future<Either<Failure, LocalUser>> login(String email, String password);
  Future<Either<Failure, bool>> completeProfileTalent(
      Map<String, dynamic> data);
  Future<Either<Failure, GetTalentProfile>> getProfile();
  Future<Either<Failure, bool>> register(
      String email, String password, String role);
  Future<Either<Failure, String>> convertStringName(String name);
}
