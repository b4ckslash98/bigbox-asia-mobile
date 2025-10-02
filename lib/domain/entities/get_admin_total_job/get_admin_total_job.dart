// To parse this JSON data, do
//
//     final getAdminTotalJob = getAdminTotalJobFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_admin_total_job.freezed.dart';
part 'get_admin_total_job.g.dart';


@freezed
class GetAdminTotalJob with _$GetAdminTotalJob {
    const factory GetAdminTotalJob({
        @JsonKey(name: 'status')
        String? status,
        @JsonKey(name: 'message')
        String? message,
        @JsonKey(name: 'data')
        int? data,
    }) = _GetAdminTotalJob;

    factory GetAdminTotalJob.fromJson(Map<String, dynamic> json) => _$GetAdminTotalJobFromJson(json);
}
