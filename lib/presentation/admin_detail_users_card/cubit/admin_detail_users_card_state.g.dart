// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_detail_users_card_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminDetailUsersCardStateImpl _$$AdminDetailUsersCardStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminDetailUsersCardStateImpl(
      fcmToken: json['fcmToken'] as String?,
      adminUser: json['adminUser'] == null
          ? null
          : GetAdminUser.fromJson(json['adminUser'] as Map<String, dynamic>),
      talentProfile: json['talentProfile'] == null
          ? null
          : GetTalentProfile.fromJson(
              json['talentProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminDetailUsersCardStateImplToJson(
        _$AdminDetailUsersCardStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'adminUser': instance.adminUser?.toJson(),
      'talentProfile': instance.talentProfile?.toJson(),
    };
