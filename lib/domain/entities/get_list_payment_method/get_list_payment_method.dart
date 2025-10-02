// To parse this JSON data, do
//
//     final getListPaymentMethod = getListPaymentMethodFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_list_payment_method.freezed.dart';
part 'get_list_payment_method.g.dart';

@freezed
class GetListPaymentMethod with _$GetListPaymentMethod {
  const factory GetListPaymentMethod({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetListPaymentMethod>? data,
  }) = _GetListPaymentMethod;

  factory GetListPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$GetListPaymentMethodFromJson(json);
}

@freezed
class DatumGetListPaymentMethod with _$DatumGetListPaymentMethod {
  const factory DatumGetListPaymentMethod({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'id') String? id,
  }) = _DatumGetListPaymentMethod;

  factory DatumGetListPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$DatumGetListPaymentMethodFromJson(json);
}
