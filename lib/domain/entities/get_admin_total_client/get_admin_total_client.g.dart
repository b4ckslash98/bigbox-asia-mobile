// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_total_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdminTotalClientImpl _$$GetAdminTotalClientImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAdminTotalClientImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetAdminTotalClientImplToJson(
        _$GetAdminTotalClientImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
