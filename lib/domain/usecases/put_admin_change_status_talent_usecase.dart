import 'package:dartz/dartz.dart';

import '../../lib.dart';

class PutAdminChangeStatusTalentUsecase
    implements UseCase<bool, PutAdminChangeStatusTalentUsecaseParams> {
  final AdminUserRepository repository;

  PutAdminChangeStatusTalentUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      PutAdminChangeStatusTalentUsecaseParams params) async {
    return await repository.changeTalentStatus(
        params.talentId,
        params.talentEmail,
        params.isActive,
        params.verificationStatus,
        params.verificationNote);
  }
}

class PutAdminChangeStatusTalentUsecaseParams {
  String talentId;
  String talentEmail;
  bool isActive;
  String verificationStatus;
  String verificationNote;

  PutAdminChangeStatusTalentUsecaseParams(
      {required this.talentId,
      required this.talentEmail,
      required this.isActive,
      required this.verificationStatus,
      required this.verificationNote});
}
