import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class TalentHomeRepositoryImpl implements TalentHomeRepository {
  final TalentHomeApi api;
  final NetworkInfo networkInfo;

  TalentHomeRepositoryImpl(this.api, this.networkInfo);

  @override
  Future<Either<Failure, bool>> talentCreateSchedule(
      Map<String, dynamic> data) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.talentCreateSchedule(data);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, GetScheduleTalent>> talentGetSchedule() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.talentGetSchedule();
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
