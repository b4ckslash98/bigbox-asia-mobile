// To parse this JSON data, do
//
//     final getAdminTotalJobPending = getAdminTotalJobPendingFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_admin_total_job_pending.freezed.dart';
part 'get_admin_total_job_pending.g.dart';



@freezed
class GetAdminTotalJobPending with _$GetAdminTotalJobPending {
    const factory GetAdminTotalJobPending({
        @JsonKey(name: 'status')
        String? status,
        @JsonKey(name: 'message')
        String? message,
        @JsonKey(name: 'data')
        int? data,
    }) = _GetAdminTotalJobPending;

    factory GetAdminTotalJobPending.fromJson(Map<String, dynamic> json) => _$GetAdminTotalJobPendingFromJson(json);
}
