// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_total_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdminTotalJobImpl _$$GetAdminTotalJobImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAdminTotalJobImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetAdminTotalJobImplToJson(
        _$GetAdminTotalJobImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
