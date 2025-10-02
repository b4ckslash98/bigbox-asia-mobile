import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetLocationUsecase implements UseCase<GetLocation, NoParams> {
  final LocationRepository repository;

  GetLocationUsecase(this.repository);

  @override
  Future<Either<Failure, GetLocation>> call(NoParams params) async {
    return await repository.getLocation();
  }
}
