// To parse this JSON data, do
//
//     final getFeeRegisterTalent = getFeeRegisterTalentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_fee_register_talent.freezed.dart';
part 'get_fee_register_talent.g.dart';

@freezed
class GetFeeRegisterTalent with _$GetFeeRegisterTalent {
  const factory GetFeeRegisterTalent({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') DataGetFeeRegisterTalent? data,
  }) = _GetFeeRegisterTalent;

  factory GetFeeRegisterTalent.fromJson(Map<String, dynamic> json) =>
      _$GetFeeRegisterTalentFromJson(json);
}

@freezed
class DataGetFeeRegisterTalent with _$DataGetFeeRegisterTalent {
  const factory DataGetFeeRegisterTalent({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'master_payment_codes')
    MasterPaymentCodesGetFeeRegisterTalent? masterPaymentCodes,
  }) = _DataGetFeeRegisterTalent;

  factory DataGetFeeRegisterTalent.fromJson(Map<String, dynamic> json) =>
      _$DataGetFeeRegisterTalentFromJson(json);
}

@freezed
class MasterPaymentCodesGetFeeRegisterTalent
    with _$MasterPaymentCodesGetFeeRegisterTalent {
  const factory MasterPaymentCodesGetFeeRegisterTalent({
    @JsonKey(name: 'payment_code') String? paymentCode,
    @JsonKey(name: 'amount') String? amount,
  }) = _MasterPaymentCodesGetFeeRegisterTalent;

  factory MasterPaymentCodesGetFeeRegisterTalent.fromJson(
          Map<String, dynamic> json) =>
      _$MasterPaymentCodesGetFeeRegisterTalentFromJson(json);
}
