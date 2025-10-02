// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_search_talent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetClientSearchTalentImpl _$$GetClientSearchTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientSearchTalentImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DatumGetSearchTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetClientSearchTalentImplToJson(
        _$GetClientSearchTalentImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetSearchTalentImpl _$$DatumGetSearchTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetSearchTalentImpl(
      id: json['id'] as String?,
      profile: json['profile'] == null
          ? null
          : ProfileGetSearchTalent.fromJson(
              json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatumGetSearchTalentImplToJson(
        _$DatumGetSearchTalentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile?.toJson(),
    };

_$ProfileGetSearchTalentImpl _$$ProfileGetSearchTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileGetSearchTalentImpl(
      photoProfile: json['photo_profile'] as String?,
    );

Map<String, dynamic> _$$ProfileGetSearchTalentImplToJson(
        _$ProfileGetSearchTalentImpl instance) =>
    <String, dynamic>{
      'photo_profile': instance.photoProfile,
    };
