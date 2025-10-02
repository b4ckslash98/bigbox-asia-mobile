// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalUserImpl _$$LocalUserImplFromJson(Map<String, dynamic> json) =>
    _$LocalUserImpl(
      userId: json['user_id'] as String?,
      token: json['access_token'] as String?,
      roleStatus: json['role'] as String?,
      roleId: (json['role_id'] as num?)?.toInt(),
      tokenType: json['token_type'] as String?,
      paymentStatus: json['payment_status'] as bool?,
    );

Map<String, dynamic> _$$LocalUserImplToJson(_$LocalUserImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'access_token': instance.token,
      'role': instance.roleStatus,
      'role_id': instance.roleId,
      'token_type': instance.tokenType,
      'payment_status': instance.paymentStatus,
    };
