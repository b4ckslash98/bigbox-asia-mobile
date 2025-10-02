import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetAdminDetailTalentUsecase
    implements UseCase<GetTalentProfile, GetAdminDetailTalentUsecaseParams> {
  final AdminUserRepository repository;

  GetAdminDetailTalentUsecase(this.repository);

  @override
  Future<Either<Failure, GetTalentProfile>> call(
      GetAdminDetailTalentUsecaseParams params) async {
    return await repository.getAdminDetailTalent(params.talentId);
  }
}

class GetAdminDetailTalentUsecaseParams {
  final String talentId;

  const GetAdminDetailTalentUsecaseParams({required this.talentId});
}
