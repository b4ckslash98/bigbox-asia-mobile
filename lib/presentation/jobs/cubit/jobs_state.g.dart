// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobsStateImpl _$$JobsStateImplFromJson(Map<String, dynamic> json) =>
    _$JobsStateImpl(
      fcmToken: json['fcmToken'] as String?,
      myJobs: json['myJobs'] == null
          ? null
          : GetClientMyJobModel.fromJson(
              json['myJobs'] as Map<String, dynamic>),
      adminJobs: json['adminJobs'] == null
          ? null
          : GetClientMyJobModel.fromJson(
              json['adminJobs'] as Map<String, dynamic>),
      jobDetail: json['jobDetail'] == null
          ? null
          : GetDetailJobsResponse.fromJson(
              json['jobDetail'] as Map<String, dynamic>),
      adminJobsDetail: json['adminJobsDetail'] == null
          ? null
          : GetDetailJobsResponse.fromJson(
              json['adminJobsDetail'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : GetLocation.fromJson(json['location'] as Map<String, dynamic>),
      categories: json['categories'] == null
          ? null
          : GetCategoriesResponse.fromJson(
              json['categories'] as Map<String, dynamic>),
      talentJobs: json['talentJobs'] == null
          ? null
          : GetTalentJobsResponse.fromJson(
              json['talentJobs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JobsStateImplToJson(_$JobsStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'myJobs': instance.myJobs?.toJson(),
      'adminJobs': instance.adminJobs?.toJson(),
      'jobDetail': instance.jobDetail?.toJson(),
      'adminJobsDetail': instance.adminJobsDetail?.toJson(),
      'location': instance.location?.toJson(),
      'categories': instance.categories?.toJson(),
      'talentJobs': instance.talentJobs?.toJson(),
    };
