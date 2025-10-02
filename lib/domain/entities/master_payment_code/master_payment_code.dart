// To parse this JSON data, do
//
//     final masterPaymentCode = masterPaymentCodeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'master_payment_code.freezed.dart';
part 'master_payment_code.g.dart';

@freezed
class MasterPaymentCode with _$MasterPaymentCode {
  const factory MasterPaymentCode({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumMasterPaymentCode>? data,
  }) = _MasterPaymentCode;

  factory MasterPaymentCode.fromJson(Map<String, dynamic> json) =>
      _$MasterPaymentCodeFromJson(json);
}

@freezed
class DatumMasterPaymentCode with _$DatumMasterPaymentCode {
  const factory DatumMasterPaymentCode({
    @JsonKey(name: 'payment_code') String? paymentCode,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'id') String? id,
  }) = _DatumMasterPaymentCode;

  factory DatumMasterPaymentCode.fromJson(Map<String, dynamic> json) =>
      _$DatumMasterPaymentCodeFromJson(json);
}
