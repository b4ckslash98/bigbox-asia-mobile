// To parse this JSON data, do
//
//     final getSearchTalent = getSearchTalentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_client_search_talent.freezed.dart';
part 'get_client_search_talent.g.dart';

@freezed
class GetClientSearchTalent with _$GetClientSearchTalent {
  const factory GetClientSearchTalent({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetSearchTalent>? data,
  }) = _GetClientSearchTalent;

  factory GetClientSearchTalent.fromJson(Map<String, dynamic> json) =>
      _$GetClientSearchTalentFromJson(json);
}

@freezed
class DatumGetSearchTalent with _$DatumGetSearchTalent {
  const factory DatumGetSearchTalent({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'profile') ProfileGetSearchTalent? profile,
  }) = _DatumGetSearchTalent;

  factory DatumGetSearchTalent.fromJson(Map<String, dynamic> json) =>
      _$DatumGetSearchTalentFromJson(json);
}

@freezed
class ProfileGetSearchTalent with _$ProfileGetSearchTalent {
  const factory ProfileGetSearchTalent({
    @JsonKey(name: 'photo_profile') String? photoProfile,
  }) = _ProfileGetSearchTalent;

  factory ProfileGetSearchTalent.fromJson(Map<String, dynamic> json) =>
      _$ProfileGetSearchTalentFromJson(json);
}
