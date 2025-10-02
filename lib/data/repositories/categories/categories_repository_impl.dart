import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesApi api;
  final NetworkInfo networkInfo;

  CategoriesRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, GetCategoriesResponse>> getCategories() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getCategories();
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
