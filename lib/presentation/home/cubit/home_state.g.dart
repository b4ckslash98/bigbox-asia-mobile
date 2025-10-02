// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      fcmToken: json['fcmToken'] as String?,
      currentTabIndex: (json['currentTabIndex'] as num?)?.toInt() ?? 0,
      talentProfile: json['talentProfile'] == null
          ? null
          : GetTalentProfile.fromJson(
              json['talentProfile'] as Map<String, dynamic>),
      talentJobs: json['talentJobs'] == null
          ? null
          : GetTalentJobsResponse.fromJson(
              json['talentJobs'] as Map<String, dynamic>),
      adminTotalClient: json['adminTotalClient'] == null
          ? null
          : GetAdminTotalClient.fromJson(
              json['adminTotalClient'] as Map<String, dynamic>),
      adminTotalJob: json['adminTotalJob'] == null
          ? null
          : GetAdminTotalJob.fromJson(
              json['adminTotalJob'] as Map<String, dynamic>),
      adminTotalJobPending: json['adminTotalJobPending'] == null
          ? null
          : GetAdminTotalJobPending.fromJson(
              json['adminTotalJobPending'] as Map<String, dynamic>),
      adminTotalTalent: json['adminTotalTalent'] == null
          ? null
          : GetAdminTotalTalent.fromJson(
              json['adminTotalTalent'] as Map<String, dynamic>),
      clientTotalApplication: json['clientTotalApplication'] == null
          ? null
          : GetAdminTotalTalent.fromJson(
              json['clientTotalApplication'] as Map<String, dynamic>),
      clientTotalJobs: json['clientTotalJobs'] == null
          ? null
          : GetAdminTotalTalent.fromJson(
              json['clientTotalJobs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'currentTabIndex': instance.currentTabIndex,
      'talentProfile': instance.talentProfile?.toJson(),
      'talentJobs': instance.talentJobs?.toJson(),
      'adminTotalClient': instance.adminTotalClient?.toJson(),
      'adminTotalJob': instance.adminTotalJob?.toJson(),
      'adminTotalJobPending': instance.adminTotalJobPending?.toJson(),
      'adminTotalTalent': instance.adminTotalTalent?.toJson(),
      'clientTotalApplication': instance.clientTotalApplication?.toJson(),
      'clientTotalJobs': instance.clientTotalJobs?.toJson(),
    };
