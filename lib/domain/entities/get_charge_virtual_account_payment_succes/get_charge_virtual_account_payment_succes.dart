// To parse this JSON data, do
//
//     final getChargeVirtualAccountPaymentSucces = getChargeVirtualAccountPaymentSuccesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_charge_virtual_account_payment_succes.freezed.dart';
part 'get_charge_virtual_account_payment_succes.g.dart';

@freezed
class GetChargeVirtualAccountPaymentSucces
    with _$GetChargeVirtualAccountPaymentSucces {
  const factory GetChargeVirtualAccountPaymentSucces({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') DataGetChargeVirtualAccountPaymentSucces? data,
  }) = _GetChargeVirtualAccountPaymentSucces;

  factory GetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =>
      _$GetChargeVirtualAccountPaymentSuccesFromJson(json);
}

@freezed
class DataGetChargeVirtualAccountPaymentSucces
    with _$DataGetChargeVirtualAccountPaymentSucces {
  const factory DataGetChargeVirtualAccountPaymentSucces({
    @JsonKey(name: 'payment_request_id') String? paymentRequestId,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'business_iistPaymentMethodd') String? businessId,
    @JsonKey(name: 'reference_id') String? referenceId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'metadata')
    MetadataGetChargeVirtualAccountPaymentSucces? metadata,
    @JsonKey(name: 'created') DateTime? created,
    @JsonKey(name: 'updated') DateTime? updated,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'capture_method') String? captureMethod,
    @JsonKey(name: 'channel_code') String? channelCode,
    @JsonKey(name: 'request_amount') int? requestAmount,
    @JsonKey(name: 'channel_properties')
    ChannelPropertiesGetChargeVirtualAccountPaymentSucces? channelProperties,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'actions')
    List<ActionGetChargeVirtualAccountPaymentSucces>? actions,
  }) = _DataGetChargeVirtualAccountPaymentSucces;

  factory DataGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =>
      _$DataGetChargeVirtualAccountPaymentSuccesFromJson(json);
}

@freezed
class ActionGetChargeVirtualAccountPaymentSucces
    with _$ActionGetChargeVirtualAccountPaymentSucces {
  const factory ActionGetChargeVirtualAccountPaymentSucces({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'descriptor') String? descriptor,
    @JsonKey(name: 'value') String? value,
  }) = _ActionGetChargeVirtualAccountPaymentSucces;

  factory ActionGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =>
      _$ActionGetChargeVirtualAccountPaymentSuccesFromJson(json);
}

@freezed
class ChannelPropertiesGetChargeVirtualAccountPaymentSucces
    with _$ChannelPropertiesGetChargeVirtualAccountPaymentSucces {
  const factory ChannelPropertiesGetChargeVirtualAccountPaymentSucces({
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
  }) = _ChannelPropertieGetChargeVirtualAccountPaymentSucces;

  factory ChannelPropertiesGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =>
      _$ChannelPropertiesGetChargeVirtualAccountPaymentSuccesFromJson(json);
}

@freezed
class MetadataGetChargeVirtualAccountPaymentSucces
    with _$MetadataGetChargeVirtualAccountPaymentSucces {
  const factory MetadataGetChargeVirtualAccountPaymentSucces({
    @JsonKey(name: 'metametadata') String? metametadata,
  }) = _MetadataGetChargeVirtualAccountPaymentSucces;

  factory MetadataGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =>
      _$MetadataGetChargeVirtualAccountPaymentSuccesFromJson(json);
}
