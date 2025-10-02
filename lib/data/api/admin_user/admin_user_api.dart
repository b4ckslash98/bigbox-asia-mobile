import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AdminUserApi {
  Future<ApiResponse<GetAdminUser>> getAdminTalent();
  Future<ApiResponse<bool>> changeStatusTalent(
      String talentId,
      String talentEmail,
      bool isActive,
      String verificationStatus,
      String verificationNote);

  Future<ApiResponse<GetTalentProfile>> getAdminDetailTalent(String talentId);
}

class AdminUserApiImpl implements AdminUserApi {
  final Dio dio;

  AdminUserApiImpl(this.dio);

  @override
  Future<ApiResponse<GetAdminUser>> getAdminTalent() async {
    final response = await dio.get('/api/v1/admin/talent');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetAdminUser.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> changeStatusTalent(
      String talentId,
      String talentEmail,
      bool isActive,
      String verificationStatus,
      String verificationNote) async {
    final data = {
      'is_active': isActive,
      'verification_status': verificationStatus,
      'verification_note': verificationNote,
    };

    try {
      final response = await dio.put(
        '/api/v1/admin/talent/{talent_id}/status',
        queryParameters: {
          'talent_email': talentEmail,
        },
        data: data,
      );

      return ApiResponse.fromResponse(response, (json) {
        print('Response data: $json');
        return response.statusCode == 200;
      });
    } catch (e) {
      print('Error changing talent status: $e');
      rethrow;
    }
  }

  @override
  Future<ApiResponse<GetTalentProfile>> getAdminDetailTalent(
      String talentId) async {
    final response = await dio.get('/api/v1/talent/users/$talentId');
    return ApiResponse.fromResponse(response, (json) {
      print('Response data: $json');
      return GetTalentProfile.fromJson(json);
    });
  }
}
