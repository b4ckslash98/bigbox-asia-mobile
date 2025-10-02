// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_fee_register_talent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFeeRegisterTalentImpl _$$GetFeeRegisterTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFeeRegisterTalentImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataGetFeeRegisterTalent.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetFeeRegisterTalentImplToJson(
        _$GetFeeRegisterTalentImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$DataGetFeeRegisterTalentImpl _$$DataGetFeeRegisterTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$DataGetFeeRegisterTalentImpl(
      email: json['email'] as String?,
      role: json['role'] as String?,
      masterPaymentCodes: json['master_payment_codes'] == null
          ? null
          : MasterPaymentCodesGetFeeRegisterTalent.fromJson(
              json['master_payment_codes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataGetFeeRegisterTalentImplToJson(
        _$DataGetFeeRegisterTalentImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'master_payment_codes': instance.masterPaymentCodes?.toJson(),
    };

_$MasterPaymentCodesGetFeeRegisterTalentImpl
    _$$MasterPaymentCodesGetFeeRegisterTalentImplFromJson(
            Map<String, dynamic> json) =>
        _$MasterPaymentCodesGetFeeRegisterTalentImpl(
          paymentCode: json['payment_code'] as String?,
          amount: json['amount'] as String?,
        );

Map<String, dynamic> _$$MasterPaymentCodesGetFeeRegisterTalentImplToJson(
        _$MasterPaymentCodesGetFeeRegisterTalentImpl instance) =>
    <String, dynamic>{
      'payment_code': instance.paymentCode,
      'amount': instance.amount,
    };
