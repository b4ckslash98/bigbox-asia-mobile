import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class LocationApi {
  Future<ApiResponse<GetLocation>> getLocation();
}

class LocationApiImpl implements LocationApi {
  final Dio dio;

  LocationApiImpl(this.dio);
  @override
  Future<ApiResponse<GetLocation>> getLocation() async {
    final response = await dio.get('/api/v1/sys/location');
    return ApiResponse.fromResponse(response, (json) {
      return GetLocation.fromJson(json);
    });
  }
}
