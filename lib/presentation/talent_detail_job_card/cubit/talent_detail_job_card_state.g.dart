// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talent_detail_job_card_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TalentDetailJobCardStateImpl _$$TalentDetailJobCardStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TalentDetailJobCardStateImpl(
      fcmToken: json['fcmToken'] as String?,
      jobDetail: json['jobDetail'] == null
          ? null
          : GetDetailJobsResponse.fromJson(
              json['jobDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TalentDetailJobCardStateImplToJson(
        _$TalentDetailJobCardStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'jobDetail': instance.jobDetail?.toJson(),
    };
