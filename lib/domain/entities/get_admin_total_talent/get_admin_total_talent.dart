// To parse this JSON data, do
//
//     final getAdminTotalTalent = getAdminTotalTalentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_admin_total_talent.freezed.dart';
part 'get_admin_total_talent.g.dart';

GetAdminTotalTalent getAdminTotalTalentFromJson(String str) => GetAdminTotalTalent.fromJson(json.decode(str));

String getAdminTotalTalentToJson(GetAdminTotalTalent data) => json.encode(data.toJson());

@freezed
class GetAdminTotalTalent with _$GetAdminTotalTalent {
    const factory GetAdminTotalTalent({
        @JsonKey(name: 'status')
        String? status,
        @JsonKey(name: 'message')
        String? message,
        @JsonKey(name: 'data')
        int? data,
    }) = _GetAdminTotalTalent;

    factory GetAdminTotalTalent.fromJson(Map<String, dynamic> json) => _$GetAdminTotalTalentFromJson(json);
}
