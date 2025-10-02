// To parse this JSON data, do
//
//     final getLocation = getLocationFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_location.freezed.dart';
part 'get_location.g.dart';

@freezed
class GetLocation with _$GetLocation {
  const factory GetLocation({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<DataGetLocation>? data,
  }) = _GetLocation;

  factory GetLocation.fromJson(Map<String, dynamic> json) =>
      _$GetLocationFromJson(json);
}

@freezed
class DataGetLocation with _$DataGetLocation {
  const factory DataGetLocation({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "parent_id") String? parentId,
    @JsonKey(name: "id") String? id,
  }) = _DataGetLocation;

  factory DataGetLocation.fromJson(Map<String, dynamic> json) =>
      _$DataGetLocationFromJson(json);
}
