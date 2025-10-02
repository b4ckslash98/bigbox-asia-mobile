import 'dart:io';

import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class UploadApi {
  Future<ApiResponse<Map<String, dynamic>>> uploadFile(File file);
}

class UploadApiImpl implements UploadApi {
  final Dio dio;

  UploadApiImpl(this.dio);

  @override
  Future<ApiResponse<Map<String, dynamic>>> uploadFile(File file) async {
    final response = await dio.post(
      '/api/v1/sys/upload',
      data: FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        ),
      }),
    );
    // Ambil data dari response.data (pastikan response.data sudah Map<String, dynamic>)
    return ApiResponse<Map<String, dynamic>>(
      success: response.statusCode == 200,
      message: response.data['message'] ?? 'Upload successful',
      data: response.data as Map<String, dynamic>,
    );
  }
}
