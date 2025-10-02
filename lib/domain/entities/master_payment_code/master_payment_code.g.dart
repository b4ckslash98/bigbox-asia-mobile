// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_payment_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterPaymentCodeImpl _$$MasterPaymentCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$MasterPaymentCodeImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => DatumMasterPaymentCode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MasterPaymentCodeImplToJson(
        _$MasterPaymentCodeImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumMasterPaymentCodeImpl _$$DatumMasterPaymentCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumMasterPaymentCodeImpl(
      paymentCode: json['payment_code'] as String?,
      amount: json['amount'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DatumMasterPaymentCodeImplToJson(
        _$DatumMasterPaymentCodeImpl instance) =>
    <String, dynamic>{
      'payment_code': instance.paymentCode,
      'amount': instance.amount,
      'id': instance.id,
    };
