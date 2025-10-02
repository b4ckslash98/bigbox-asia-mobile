import 'package:dartz/dartz.dart';

import '../../lib.dart';

class PostSetPaymentChargeUsecase
    implements
        UseCase<GetChargeVirtualAccountPaymentSucces,
            PostSetPaymentChargeUsecaseParam> {
  final PaymentRepository repository;

  PostSetPaymentChargeUsecase(this.repository);

  @override
  Future<Either<Failure, GetChargeVirtualAccountPaymentSucces>> call(
      PostSetPaymentChargeUsecaseParam params) async {
    return await repository.setPaymentCharge(params.paymentMethodId);
  }
}

class PostSetPaymentChargeUsecaseParam {
  final String paymentMethodId;

  const PostSetPaymentChargeUsecaseParam({
    required this.paymentMethodId,
  });
}
