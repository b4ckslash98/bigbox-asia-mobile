import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class PaymentRepository {
  Future<Either<Failure, GetListPaymentMethod>> getListPaymentMethod();
  Future<Either<Failure, GetFeeRegisterTalent>> getFeeRegisterTalent();
  Future<Either<Failure, GetChargeVirtualAccountPaymentSucces>>
      setPaymentCharge(String paymentMethodId);
}
