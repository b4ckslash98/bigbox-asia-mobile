// To parse this JSON data, do
//
//     final getAdminClient = getAdminClientFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_admin_client.freezed.dart';
part 'get_admin_client.g.dart';

@freezed
class GetAdminClient with _$GetAdminClient {
  const factory GetAdminClient({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetAdminClient>? data,
  }) = _GetAdminClient;

  factory GetAdminClient.fromJson(Map<String, dynamic> json) =>
      _$GetAdminClientFromJson(json);
}

@freezed
class DatumGetAdminClient with _$DatumGetAdminClient {
  const factory DatumGetAdminClient({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    @JsonKey(name: 'verification_note') dynamic verificationNote,
    @JsonKey(name: 'verified_at') DateTime? verifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'profile') dynamic profile,
  }) = _DatumGetAdminClient;

  factory DatumGetAdminClient.fromJson(Map<String, dynamic> json) =>
      _$DatumGetAdminClientFromJson(json);
}
