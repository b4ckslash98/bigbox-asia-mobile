// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersStateImpl _$$UsersStateImplFromJson(Map<String, dynamic> json) =>
    _$UsersStateImpl(
      fcmToken: json['fcmToken'] as String?,
      adminUser: json['adminUser'] == null
          ? null
          : GetAdminUser.fromJson(json['adminUser'] as Map<String, dynamic>),
      talentProfile: json['talentProfile'] == null
          ? null
          : GetTalentProfile.fromJson(
              json['talentProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UsersStateImplToJson(_$UsersStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'adminUser': instance.adminUser?.toJson(),
      'talentProfile': instance.talentProfile?.toJson(),
    };
