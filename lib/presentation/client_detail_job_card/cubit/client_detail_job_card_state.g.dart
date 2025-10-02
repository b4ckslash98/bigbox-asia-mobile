// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_detail_job_card_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientDetailJobCardStateImpl _$$ClientDetailJobCardStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientDetailJobCardStateImpl(
      fcmToken: json['fcmToken'] as String?,
      jobDetail: json['jobDetail'] == null
          ? null
          : GetDetailJobsResponse.fromJson(
              json['jobDetail'] as Map<String, dynamic>),
      getAplicationTalent: json['getAplicationTalent'] == null
          ? null
          : GetAplicationTalent.fromJson(
              json['getAplicationTalent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientDetailJobCardStateImplToJson(
        _$ClientDetailJobCardStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'jobDetail': instance.jobDetail?.toJson(),
      'getAplicationTalent': instance.getAplicationTalent?.toJson(),
    };
