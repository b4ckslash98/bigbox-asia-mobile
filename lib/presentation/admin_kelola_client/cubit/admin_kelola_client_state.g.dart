// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_kelola_client_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminKelolaClientStateImpl _$$AdminKelolaClientStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminKelolaClientStateImpl(
      fcmToken: json['fcmToken'] as String?,
      adminClient: json['adminClient'] == null
          ? null
          : GetAdminClient.fromJson(
              json['adminClient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminKelolaClientStateImplToJson(
        _$AdminKelolaClientStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'adminClient': instance.adminClient?.toJson(),
    };
