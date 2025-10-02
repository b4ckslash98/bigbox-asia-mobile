import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class LocationRepository {
  Future<Either<Failure, GetLocation>> getLocation();
}
