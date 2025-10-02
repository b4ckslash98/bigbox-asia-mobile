import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class AdminJobsRepositoryImpl implements AdminJobsRepository {
  final AdminJobsApi api;
  final NetworkInfo networkInfo;

  AdminJobsRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, bool>> adminApproveJobs(
      String jobId, Map<String, dynamic> data) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.adminApproveJobs(jobId, data);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> adminModerasiBudgetJobs(
      String jobId, List<Map<String, dynamic>> data) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.adminModerasiBudgetJobs(jobId, data);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}
