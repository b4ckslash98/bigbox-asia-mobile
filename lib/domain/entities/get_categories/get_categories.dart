// To parse this JSON data, do
//
//     final getCategoriesResponse = getCategoriesResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_categories.freezed.dart';
part 'get_categories.g.dart';

@freezed
class GetCategoriesResponse with _$GetCategoriesResponse {
  const factory GetCategoriesResponse({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<DataGetCategoriesResponse>? data,
  }) = _GetCategoriesResponse;

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCategoriesResponseFromJson(json);
}

@freezed
class DataGetCategoriesResponse with _$DataGetCategoriesResponse {
  const factory DataGetCategoriesResponse({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "id") String? id,
  }) = _DataGetCategoriesResponse;

  factory DataGetCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$DataGetCategoriesResponseFromJson(json);
}
