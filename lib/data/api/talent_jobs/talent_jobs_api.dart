import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class TalentJobsApi {
  Future<ApiResponse<GetTalentJobsResponse>> getTalentJobs();
  Future<ApiResponse<bool>> talentApplyJobs(String roleid, String jobId);
}

class TalentJobsApiImpl implements TalentJobsApi {
  final Dio dio;

  TalentJobsApiImpl(this.dio);
  @override
  Future<ApiResponse<GetTalentJobsResponse>> getTalentJobs() async {
    final response = await dio.get('/api/v1/talent/jobs');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetTalentJobsResponse.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> talentApplyJobs(String roleid, String jobId) async {
    final response =
        await dio.post('/api/v1/talent/$jobId/${roleid.toString()}/apply');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }
}
