import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AuthApi {
  Future<ApiResponse<LocalUser>> login(String email, String password);
  Future<ApiResponse<bool>> register(
      String email, String password, String role);

  Future<ApiResponse<bool>> completeProfileTalent(Map<String, dynamic> data);
  Future<ApiResponse<GetTalentProfile>> getProfile();
  Future<ApiResponse<String>> convertStringName(String name);
}

class AuthApiImpl implements AuthApi {
  final Dio dio;

  AuthApiImpl(this.dio);

  @override
  Future<ApiResponse<String>> convertStringName(String name) async {
    final response = await dio.post(
      '/api/v1/sys/convert/string/username?data=$name',
    );
    return ApiResponse.fromResponse(response, (json) {
      return json['data'] as String;
    });
  }

  @override
  Future<ApiResponse<LocalUser>> login(String email, String password) async {
    final response = await dio.post(
      '/api/v1/auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return ApiResponse.fromResponse(response, (json) {
      return LocalUser.fromJson(json['data']);
    });
  }

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

  @override
  Future<ApiResponse<GetTalentProfile>> getProfile() async {
    final response = await dio.get('/api/v1/auth/profile');
    return ApiResponse.fromResponse(response, (json) {
      return GetTalentProfile.fromJson(json);
    });
  }

  @override
  Future<ApiResponse<bool>> register(
      String email, String password, String role) async {
    final response = await dio.post(
      '/api/v1/auth/register',
      data: {
        'email': email,
        'password': password,
        'role': role,
      },
    );
    return ApiResponse.fromResponse(response, (json) {
      return response.statusCode == 200;
    });
  }
}
