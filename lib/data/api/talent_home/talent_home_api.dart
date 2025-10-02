import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class TalentHomeApi {
  Future<ApiResponse<GetScheduleTalent>> talentGetSchedule();
  Future<ApiResponse<bool>> talentCreateSchedule(Map<String, dynamic> data);
}

class TalentHomeApiImpl implements TalentHomeApi {
  final Dio dio;

  TalentHomeApiImpl(this.dio);
  @override
  Future<ApiResponse<GetScheduleTalent>> talentGetSchedule() async {
    final response = await dio.get('/api/v1/talent/schedule/get');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetScheduleTalent.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> talentCreateSchedule(
      Map<String, dynamic> data) async {
    final response = await dio.post('/api/v1/talent/schedule/set', data: data);
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return response.statusCode == 200;
    });
  }
}
