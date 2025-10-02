// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_detail_job_card_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminDetailJobCardStateImpl _$$AdminDetailJobCardStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminDetailJobCardStateImpl(
      fcmToken: json['fcmToken'] as String?,
      jobDetail: json['jobDetail'] == null
          ? null
          : GetDetailJobsResponse.fromJson(
              json['jobDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminDetailJobCardStateImplToJson(
        _$AdminDetailJobCardStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'jobDetail': instance.jobDetail?.toJson(),
    };
