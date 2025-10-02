import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AdminHomeApi {
  Future<ApiResponse<GetAdminTotalClient>> adminTotalClient();
  Future<ApiResponse<GetAdminTotalTalent>> adminTotalTalent();
  Future<ApiResponse<GetAdminTotalJobPending>> adminTotalJobPending();
  Future<ApiResponse<GetAdminTotalJob>> adminTotalJob();
  Future<ApiResponse<GetAdminClient>> adminGetClient();
  Future<ApiResponse<bool>> adminApproveClient(String status, String email);
  Future<ApiResponse<bool>> adminAddTalent(Map<String, dynamic> data);
  Future<ApiResponse<MasterPaymentCode>> masterPaymentCode();
}

class AdminHomeApiImpl implements AdminHomeApi {
  final Dio dio;

  AdminHomeApiImpl(this.dio);
  @override
  Future<ApiResponse<GetAdminTotalClient>> adminTotalClient() async {
    final response = await dio.get('/api/v1/admin/dashboard/card-total-client');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminTotalClient.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetAdminTotalJob>> adminTotalJob() async {
    final response = await dio.get('/api/v1/admin/dashboard/card-total-job');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminTotalJob.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetAdminTotalJobPending>> adminTotalJobPending() async {
    final response =
        await dio.get('/api/v1/admin/dashboard/card-total-job-pending');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminTotalJobPending.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetAdminTotalTalent>> adminTotalTalent() async {
    final response = await dio.get('/api/v1/admin/dashboard/card-talent');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminTotalTalent.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetAdminClient>> adminGetClient() async {
    final response = await dio.get('/api/v1/admin/client');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminClient.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> adminApproveClient(
      String status, String email) async {
    final response = await dio.put('/api/v1/admin/client/status', data: {
      'status': status,
      'email': email,
    });
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }

  @override
  Future<ApiResponse<bool>> adminAddTalent(Map<String, dynamic> data) async {
    final response = await dio.post('/api/v1/auth/register', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }

  @override
  Future<ApiResponse<MasterPaymentCode>> masterPaymentCode() async {
    final response = await dio.get('/api/v1/sys/master-payment-code');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return MasterPaymentCode.fromJson(json);
    });
  }
}
