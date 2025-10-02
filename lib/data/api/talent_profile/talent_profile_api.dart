import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class TalentProfileApi {
  Future<ApiResponse<bool>> completeProfileTalent(Map<String, dynamic> data);
}

class TalentProfileApiImpl implements TalentProfileApi {
  final Dio dio;

  TalentProfileApiImpl(this.dio);

  @override
  Future<ApiResponse<bool>> completeProfileTalent(
      Map<String, dynamic> data) async {
    final response = await dio.post(
      '/api/v1/auth/complete-profile',
      data: data,
    );
    return ApiResponse.fromResponse(response, (json) {
      return response.statusCode == 200;
    });
  }
}
