// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talent_jadwal_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TalentJadwalStateImpl _$$TalentJadwalStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TalentJadwalStateImpl(
      fcmToken: json['fcmToken'] as String?,
      scheduleTalent: json['scheduleTalent'] == null
          ? null
          : GetScheduleTalent.fromJson(
              json['scheduleTalent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TalentJadwalStateImplToJson(
        _$TalentJadwalStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'scheduleTalent': instance.scheduleTalent?.toJson(),
    };
