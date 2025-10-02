import 'package:dartz/dartz.dart';

import '../../lib.dart';

class GetListPaymentMethodUsecase
    implements UseCase<GetListPaymentMethod, NoParams> {
  final PaymentRepository repository;

  GetListPaymentMethodUsecase(this.repository);

  @override
  Future<Either<Failure, GetListPaymentMethod>> call(NoParams params) async {
    return await repository.getListPaymentMethod();
  }
}
