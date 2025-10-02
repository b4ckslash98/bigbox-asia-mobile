// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentStateImpl _$$PaymentStateImplFromJson(Map<String, dynamic> json) =>
    _$PaymentStateImpl(
      fcmToken: json['fcmToken'] as String?,
      listPaymentMethod: json['listPaymentMethod'] == null
          ? null
          : GetListPaymentMethod.fromJson(
              json['listPaymentMethod'] as Map<String, dynamic>),
      feeRegisterTalent: json['feeRegisterTalent'] == null
          ? null
          : GetFeeRegisterTalent.fromJson(
              json['feeRegisterTalent'] as Map<String, dynamic>),
      chargeVirtualAccountPaymentSucces:
          json['chargeVirtualAccountPaymentSucces'] == null
              ? null
              : GetChargeVirtualAccountPaymentSucces.fromJson(
                  json['chargeVirtualAccountPaymentSucces']
                      as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : GetTalentProfile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentStateImplToJson(_$PaymentStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'listPaymentMethod': instance.listPaymentMethod?.toJson(),
      'feeRegisterTalent': instance.feeRegisterTalent?.toJson(),
      'chargeVirtualAccountPaymentSucces':
          instance.chargeVirtualAccountPaymentSucces?.toJson(),
      'profile': instance.profile?.toJson(),
    };
