// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetListPaymentMethodImpl _$$GetListPaymentMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$GetListPaymentMethodImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DatumGetListPaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetListPaymentMethodImplToJson(
        _$GetListPaymentMethodImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetListPaymentMethodImpl _$$DatumGetListPaymentMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetListPaymentMethodImpl(
      name: json['name'] as String?,
      isActive: json['is_active'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DatumGetListPaymentMethodImplToJson(
        _$DatumGetListPaymentMethodImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'is_active': instance.isActive,
      'id': instance.id,
    };
