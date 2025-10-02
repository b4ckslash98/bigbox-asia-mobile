import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class ClientHomeApi {
  Future<ApiResponse<GetClientSearchTalent>> clientSearchTalent();
  Future<ApiResponse<GetAdminTotalTalent>> clientTotalJobs();
  Future<ApiResponse<GetAdminTotalTalent>> clientTotalApplications();
}

class ClientHomeApiImpl implements ClientHomeApi {
  final Dio dio;

  ClientHomeApiImpl(this.dio);
  @override
  Future<ApiResponse<GetClientSearchTalent>> clientSearchTalent() async {
    final response = await dio.get('/api/v1/client/talent');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetClientSearchTalent.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetAdminTotalTalent>> clientTotalApplications() async {
    final response = await dio.get('/api/v1/client/count/total-jobs');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminTotalTalent.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetAdminTotalTalent>> clientTotalJobs() async {
    final response = await dio.get('/api/v1/client/count/total-aplikasi-masuk');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminTotalTalent.fromJson(json);
    });
  }
}
