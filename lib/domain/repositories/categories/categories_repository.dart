import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, GetCategoriesResponse>> getCategories();
}
