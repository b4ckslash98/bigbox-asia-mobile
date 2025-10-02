// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetLocationImpl _$$GetLocationImplFromJson(Map<String, dynamic> json) =>
    _$GetLocationImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataGetLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetLocationImplToJson(_$GetLocationImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DataGetLocationImpl _$$DataGetLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$DataGetLocationImpl(
      name: json['name'] as String?,
      parentId: json['parent_id'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DataGetLocationImplToJson(
        _$DataGetLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'id': instance.id,
    };
