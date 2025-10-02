import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentApi api;
  final NetworkInfo networkInfo;

  PaymentRepositoryImpl(this.api, this.networkInfo);

  @override
  Future<Either<Failure, GetFeeRegisterTalent>> getFeeRegisterTalent() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getFeeRegisterTalent();
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, GetListPaymentMethod>> getListPaymentMethod() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.getListPaymentMethod();
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

  @override
  Future<Either<Failure, GetChargeVirtualAccountPaymentSucces>>
      setPaymentCharge(String paymentMethodId) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.setPaymentCharge(paymentMethodId);
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
