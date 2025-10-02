import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class AdminUserRepositoryImpl implements AdminUserRepository {
  final AdminUserApi api;
  final NetworkInfo networkInfo;

  AdminUserRepositoryImpl(this.api, this.networkInfo);

  @override
  Future<Either<Failure, bool>> changeTalentStatus(
      String talentId,
      String talentEmail,
      bool isActive,
      String verificationStatus,
      String verificationNote) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.changeStatusTalent(talentId, talentEmail,
          isActive, verificationStatus, verificationNote);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, GetAdminUser>> getAdminTalent() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getAdminTalent();
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, GetTalentProfile>> getAdminDetailTalent(
      String talentId) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getAdminDetailTalent(talentId);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
