// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_charge_virtual_account_payment_succes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetChargeVirtualAccountPaymentSuccesImpl
    _$$GetChargeVirtualAccountPaymentSuccesImplFromJson(
            Map<String, dynamic> json) =>
        _$GetChargeVirtualAccountPaymentSuccesImpl(
          status: json['status'] as String?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : DataGetChargeVirtualAccountPaymentSucces.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetChargeVirtualAccountPaymentSuccesImplToJson(
        _$GetChargeVirtualAccountPaymentSuccesImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$DataGetChargeVirtualAccountPaymentSuccesImpl
    _$$DataGetChargeVirtualAccountPaymentSuccesImplFromJson(
            Map<String, dynamic> json) =>
        _$DataGetChargeVirtualAccountPaymentSuccesImpl(
          paymentRequestId: json['payment_request_id'] as String?,
          country: json['country'] as String?,
          currency: json['currency'] as String?,
          businessId: json['business_iistPaymentMethodd'] as String?,
          referenceId: json['reference_id'] as String?,
          description: json['description'] as String?,
          metadata: json['metadata'] == null
              ? null
              : MetadataGetChargeVirtualAccountPaymentSucces.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTime.parse(json['created'] as String),
          updated: json['updated'] == null
              ? null
              : DateTime.parse(json['updated'] as String),
          status: json['status'] as String?,
          captureMethod: json['capture_method'] as String?,
          channelCode: json['channel_code'] as String?,
          requestAmount: (json['request_amount'] as num?)?.toInt(),
          channelProperties: json['channel_properties'] == null
              ? null
              : ChannelPropertiesGetChargeVirtualAccountPaymentSucces.fromJson(
                  json['channel_properties'] as Map<String, dynamic>),
          type: json['type'] as String?,
          actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => ActionGetChargeVirtualAccountPaymentSucces.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$DataGetChargeVirtualAccountPaymentSuccesImplToJson(
        _$DataGetChargeVirtualAccountPaymentSuccesImpl instance) =>
    <String, dynamic>{
      'payment_request_id': instance.paymentRequestId,
      'country': instance.country,
      'currency': instance.currency,
      'business_iistPaymentMethodd': instance.businessId,
      'reference_id': instance.referenceId,
      'description': instance.description,
      'metadata': instance.metadata?.toJson(),
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'status': instance.status,
      'capture_method': instance.captureMethod,
      'channel_code': instance.channelCode,
      'request_amount': instance.requestAmount,
      'channel_properties': instance.channelProperties?.toJson(),
      'type': instance.type,
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };

_$ActionGetChargeVirtualAccountPaymentSuccesImpl
    _$$ActionGetChargeVirtualAccountPaymentSuccesImplFromJson(
            Map<String, dynamic> json) =>
        _$ActionGetChargeVirtualAccountPaymentSuccesImpl(
          type: json['type'] as String?,
          descriptor: json['descriptor'] as String?,
          value: json['value'] as String?,
        );

Map<String, dynamic> _$$ActionGetChargeVirtualAccountPaymentSuccesImplToJson(
        _$ActionGetChargeVirtualAccountPaymentSuccesImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'descriptor': instance.descriptor,
      'value': instance.value,
    };

_$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl
    _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplFromJson(
            Map<String, dynamic> json) =>
        _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl(
          displayName: json['display_name'] as String?,
          expiresAt: json['expires_at'] == null
              ? null
              : DateTime.parse(json['expires_at'] as String),
        );

Map<String,
    dynamic> _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplToJson(
        _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'expires_at': instance.expiresAt?.toIso8601String(),
    };

_$MetadataGetChargeVirtualAccountPaymentSuccesImpl
    _$$MetadataGetChargeVirtualAccountPaymentSuccesImplFromJson(
            Map<String, dynamic> json) =>
        _$MetadataGetChargeVirtualAccountPaymentSuccesImpl(
          metametadata: json['metametadata'] as String?,
        );

Map<String, dynamic> _$$MetadataGetChargeVirtualAccountPaymentSuccesImplToJson(
        _$MetadataGetChargeVirtualAccountPaymentSuccesImpl instance) =>
    <String, dynamic>{
      'metametadata': instance.metametadata,
    };
