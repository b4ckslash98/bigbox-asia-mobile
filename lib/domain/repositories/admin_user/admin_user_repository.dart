import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class AdminUserRepository {
  Future<Either<Failure, bool>> changeTalentStatus(
      String talentId,
      String talentEmail,
      bool isActive,
      String verificationStatus,
      String verificationNote);
  Future<Either<Failure, GetAdminUser>> getAdminTalent();
  Future<Either<Failure, GetTalentProfile>> getAdminDetailTalent(
      String talentId);
}
