import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class ClientJobsApi {
  Future<ApiResponse<bool>> clientCreateJobs(Map<String, dynamic> data);
  Future<ApiResponse<GetClientMyJobModel>> clientGetMyJobs();
  Future<ApiResponse<GetDetailJobsResponse>> clientGetDetailJobs(String jobId);
  Future<ApiResponse<bool>> clientUpdateJobs(
      Map<String, dynamic> data, String jobId);

  Future<ApiResponse<GetAplicationTalent>> getAplicationClientJobs(
      String jobId);

  Future<ApiResponse<bool>> clientChangeStatusApplication(
      Map<String, dynamic> data, String jobId);
}

class ClientJobsApiImpl implements ClientJobsApi {
  final Dio dio;

  ClientJobsApiImpl(this.dio);
  @override
  Future<ApiResponse<bool>> clientCreateJobs(Map<String, dynamic> data) async {
    final response = await dio.post('/api/v1/client/jobs/', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }

  @override
  Future<ApiResponse<GetClientMyJobModel>> clientGetMyJobs() async {
    final response = await dio.get('/api/v1/client/jobs/');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetClientMyJobModel.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<GetDetailJobsResponse>> clientGetDetailJobs(
      String jobId) async {
    final response = await dio.get('/api/v1/client/jobs/$jobId');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetDetailJobsResponse.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> clientUpdateJobs(
      Map<String, dynamic> data, String jobId) async {
    final response = await dio.put('/api/v1/client/jobs/$jobId', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }

  @override
  Future<ApiResponse<GetAplicationTalent>> getAplicationClientJobs(
      String jobId) async {
    final response = await dio.get('/api/v1/client/application/$jobId');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAplicationTalent.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> clientChangeStatusApplication(
      Map<String, dynamic> data, String jobId) async {
    final response =
        await dio.put('/api/v1/client/update/application/$jobId', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }
}
