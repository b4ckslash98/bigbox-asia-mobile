import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class TalentJobsRepositoryImpl implements TalentJobsRepository {
  final TalentJobsApi api;
  final NetworkInfo networkInfo;

  TalentJobsRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, GetTalentJobsResponse>> getTalentJobs() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getTalentJobs();
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
  
  @override
  Future<Either<Failure, bool>> talentApplyJobs(String roleid, String jobId) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.talentApplyJobs(roleid, jobId);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}

//// data source(api)  -> repository -> usecase -> cubit -> ui
