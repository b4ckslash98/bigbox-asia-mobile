// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_posting_job_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientPostingJobStateImpl _$$ClientPostingJobStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientPostingJobStateImpl(
      fcmToken: json['fcmToken'] as String?,
      getLocation: json['getLocation'] == null
          ? null
          : GetLocation.fromJson(json['getLocation'] as Map<String, dynamic>),
      categories: json['categories'] == null
          ? null
          : GetCategoriesResponse.fromJson(
              json['categories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientPostingJobStateImplToJson(
        _$ClientPostingJobStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'getLocation': instance.getLocation?.toJson(),
      'categories': instance.categories?.toJson(),
    };
