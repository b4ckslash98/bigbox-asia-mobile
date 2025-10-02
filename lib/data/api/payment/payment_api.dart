import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class PaymentApi {
  Future<ApiResponse<GetListPaymentMethod>> getListPaymentMethod();
  Future<ApiResponse<GetFeeRegisterTalent>> getFeeRegisterTalent();
  Future<ApiResponse<GetChargeVirtualAccountPaymentSucces>> setPaymentCharge(
      String paymentMethodId);
}

class PaymentApiImpl implements PaymentApi {
  final Dio dio;

  PaymentApiImpl(this.dio);

  @override
  Future<ApiResponse<GetFeeRegisterTalent>> getFeeRegisterTalent() async {
    final response = await dio.get('/api/v1/payment/fee/register');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetFeeRegisterTalent.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetListPaymentMethod>> getListPaymentMethod() async {
    final response = await dio.get('/api/v1/payment/list/payment-method');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetListPaymentMethod.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetChargeVirtualAccountPaymentSucces>> setPaymentCharge(
      String paymentMethodId) async {
    final response = await dio.post('/api/v1/payment/charge',
        data: {'payment_method_id': paymentMethodId});
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetChargeVirtualAccountPaymentSucces.fromJson(json);
    });
  }
}
