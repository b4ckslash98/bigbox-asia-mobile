import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class CategoriesApi {
  Future<ApiResponse<GetCategoriesResponse>> getCategories();
}

class CategoriesApiImpl implements CategoriesApi {
  final Dio dio;

  CategoriesApiImpl(this.dio);
  @override
  Future<ApiResponse<GetCategoriesResponse>> getCategories() async {
    final response = await dio.get('/api/v1/sys/categories');
    return ApiResponse.fromResponse(response, (json) {
      return GetCategoriesResponse.fromJson(json);
    });
  }
}
