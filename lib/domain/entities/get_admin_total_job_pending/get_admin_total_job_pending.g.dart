// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_total_job_pending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdminTotalJobPendingImpl _$$GetAdminTotalJobPendingImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAdminTotalJobPendingImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetAdminTotalJobPendingImplToJson(
        _$GetAdminTotalJobPendingImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
