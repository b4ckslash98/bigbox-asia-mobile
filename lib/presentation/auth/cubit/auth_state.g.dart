// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      user: json['user'] == null
          ? null
          : LocalUser.fromJson(json['user'] as Map<String, dynamic>),
      fcmToken: json['fcmToken'] as String?,
      profile: json['profile'] == null
          ? null
          : GetTalentProfile.fromJson(json['profile'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : GetLocation.fromJson(json['location'] as Map<String, dynamic>),
      categories: json['categories'] == null
          ? null
          : GetCategoriesResponse.fromJson(
              json['categories'] as Map<String, dynamic>),
      convertedName: json['convertedName'] as String?,
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'fcmToken': instance.fcmToken,
      'profile': instance.profile?.toJson(),
      'location': instance.location?.toJson(),
      'categories': instance.categories?.toJson(),
      'convertedName': instance.convertedName,
    };
