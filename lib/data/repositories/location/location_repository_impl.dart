import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationApi api;
  final NetworkInfo networkInfo;

  LocationRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, GetLocation>> getLocation() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getLocation();
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
