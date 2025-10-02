import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class AdminHomeRepository {
  Future<Either<Failure, GetAdminTotalClient>> adminTotalClient();
  Future<Either<Failure, GetAdminTotalTalent>> adminTotalTalent();
  Future<Either<Failure, GetAdminTotalJobPending>> adminTotalJobPending();
  Future<Either<Failure, GetAdminTotalJob>> adminTotalJob();
  Future<Either<Failure, GetAdminClient>> adminGetClient();
  Future<Either<Failure, bool>> adminApproveClient(String status, String email);
  Future<Either<Failure, bool>> adminAddTalent(Map<String, dynamic> data);
  Future<Either<Failure, MasterPaymentCode>> getMasterPaymentCode();
}
