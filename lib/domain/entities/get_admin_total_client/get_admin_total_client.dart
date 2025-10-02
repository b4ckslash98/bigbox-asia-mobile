// To parse this JSON data, do
//
//     final getAdminTotalClient = getAdminTotalClientFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_admin_total_client.freezed.dart';
part 'get_admin_total_client.g.dart';



@freezed
class GetAdminTotalClient with _$GetAdminTotalClient {
    const factory GetAdminTotalClient({
        @JsonKey(name: 'status')
        String? status,
        @JsonKey(name: 'message')
        String? message,
        @JsonKey(name: 'data')
        int? data,
    }) = _GetAdminTotalClient;

    factory GetAdminTotalClient.fromJson(Map<String, dynamic> json) => _$GetAdminTotalClientFromJson(json);
}
