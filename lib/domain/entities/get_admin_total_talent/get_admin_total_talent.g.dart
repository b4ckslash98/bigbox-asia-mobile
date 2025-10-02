// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_total_talent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdminTotalTalentImpl _$$GetAdminTotalTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAdminTotalTalentImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetAdminTotalTalentImplToJson(
        _$GetAdminTotalTalentImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
