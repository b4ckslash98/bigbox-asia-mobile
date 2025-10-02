import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetCategoriesUsecase implements UseCase<GetCategoriesResponse, NoParams> {
  final CategoriesRepository repository;

  GetCategoriesUsecase(this.repository);

  @override
  Future<Either<Failure, GetCategoriesResponse>> call(NoParams params) async {
    return await repository.getCategories();
  }
}
