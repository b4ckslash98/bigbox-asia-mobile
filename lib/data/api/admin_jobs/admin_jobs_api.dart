import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AdminJobsApi {
  Future<ApiResponse<bool>> adminApproveJobs(
      String jobId, Map<String, dynamic> data);

  Future<ApiResponse<bool>> adminModerasiBudgetJobs(
      String jobId, List<Map<String, dynamic>> data);

  
}

class AdminJobsApiImpl implements AdminJobsApi {
  final Dio dio;

  AdminJobsApiImpl(this.dio);
  @override
  Future<ApiResponse<bool>> adminApproveJobs(
      String jobId, Map<String, dynamic> data) async {
    final response =
        await dio.put('/api/v1/admin/client/$jobId/status', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }

  @override
  Future<ApiResponse<bool>> adminModerasiBudgetJobs(
      String jobId, List<Map<String, dynamic>> data) async {
    final response =
        await dio.put('/api/v1/client/jobs/$jobId/moderasi', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }
}
