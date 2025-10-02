import 'package:dartz/dartz.dart';

import '../../lib.dart';

class PutAdminClientApproveUsecase
    implements UseCase<bool, PutAdminClientApproveUsecaseParams> {
  final AdminHomeRepository repository;

  PutAdminClientApproveUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      PutAdminClientApproveUsecaseParams params) async {
    return await repository.adminApproveClient(params.status, params.email);
  }
}

class PutAdminClientApproveUsecaseParams {
  final String status;
  final String email;

  const PutAdminClientApproveUsecaseParams(
      {required this.status, required this.email});
}
