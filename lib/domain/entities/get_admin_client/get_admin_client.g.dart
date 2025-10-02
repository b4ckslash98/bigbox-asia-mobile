// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdminClientImpl _$$GetAdminClientImplFromJson(Map<String, dynamic> json) =>
    _$GetAdminClientImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DatumGetAdminClient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAdminClientImplToJson(
        _$GetAdminClientImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetAdminClientImpl _$$DatumGetAdminClientImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetAdminClientImpl(
      email: json['email'] as String?,
      role: json['role'] as String?,
      id: json['id'] as String?,
      isActive: json['is_active'] as bool?,
      verificationStatus: json['verification_status'] as String?,
      verificationNote: json['verification_note'],
      verifiedAt: json['verified_at'] == null
          ? null
          : DateTime.parse(json['verified_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      profile: json['profile'],
    );

Map<String, dynamic> _$$DatumGetAdminClientImplToJson(
        _$DatumGetAdminClientImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'id': instance.id,
      'is_active': instance.isActive,
      'verification_status': instance.verificationStatus,
      'verification_note': instance.verificationNote,
      'verified_at': instance.verifiedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'profile': instance.profile,
    };
