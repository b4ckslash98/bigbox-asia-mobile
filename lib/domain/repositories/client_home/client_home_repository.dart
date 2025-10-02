import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class ClientHomeRepository {
  Future<Either<Failure, GetClientSearchTalent>> clientSearchTalent();
  Future<Either<Failure, GetAdminTotalTalent>> clientTotalJobs();
  Future<Either<Failure, GetAdminTotalTalent>> clientTotalApplications();
}
