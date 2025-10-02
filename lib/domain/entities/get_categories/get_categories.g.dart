// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCategoriesResponseImpl _$$GetCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCategoriesResponseImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DataGetCategoriesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCategoriesResponseImplToJson(
        _$GetCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DataGetCategoriesResponseImpl _$$DataGetCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataGetCategoriesResponseImpl(
      name: json['name'] as String?,
      isActive: json['is_active'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DataGetCategoriesResponseImplToJson(
        _$DataGetCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'is_active': instance.isActive,
      'id': instance.id,
    };
