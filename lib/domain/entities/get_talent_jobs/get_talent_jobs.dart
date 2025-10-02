// To parse this JSON data, do
//
//     final getTalentJobsResponse = getTalentJobsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_talent_jobs.freezed.dart';
part 'get_talent_jobs.g.dart';

@freezed
class GetTalentJobsResponse with _$GetTalentJobsResponse {
  const factory GetTalentJobsResponse({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetTalentJobsResponse>? data,
  }) = _GetTalentJobsResponse;

  factory GetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTalentJobsResponseFromJson(json);
}

@freezed
class DatumGetTalentJobsResponse with _$DatumGetTalentJobsResponse {
  const factory DatumGetTalentJobsResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'status_note') String? statusNote,
    @JsonKey(name: 'views') int? views,
    @JsonKey(name: 'total_applications') int? totalApplications,
    @JsonKey(name: 'conversion_rate') int? conversionRate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'locations') List<LocationGetTalentJobsResponse>? locations,
    @JsonKey(name: 'locations_talent')
    List<LocationGetTalentJobsResponse>? locationsTalent,
    @JsonKey(name: 'schedules') List<ScheduleGetTalentJobsResponse>? schedules,
    @JsonKey(name: 'schedule_processes')
    List<ScheduleGetTalentJobsResponse>? scheduleProcesses,
    @JsonKey(name: 'roles') List<RoleGetTalentJobsResponse>? roles,
    @JsonKey(name: 'closed_questions')
    List<ClosedQuestionGetTalentJobsResponse>? closedQuestions,
    @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
    @JsonKey(name: 'client') ClientGetTalentJobsResponse? client,
    @JsonKey(name: 'categories')
    List<CategoryGetTalentJobsResponse>? categories,
  }) = _DatumGetTalentJobsResponse;

  factory DatumGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$DatumGetTalentJobsResponseFromJson(json);
}

@freezed
class LocationGetTalentJobsResponse with _$LocationGetTalentJobsResponse {
  const factory LocationGetTalentJobsResponse({
    @JsonKey(name: 'location_id') String? locationId,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
    @JsonKey(name: 'location') LocationDetailGetTalentJobsResponse? location,
  }) = _LocationGetTalentJobsResponse;

  factory LocationGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationGetTalentJobsResponseFromJson(json);
}

@freezed
class LocationDetailGetTalentJobsResponse
    with _$LocationDetailGetTalentJobsResponse {
  const factory LocationDetailGetTalentJobsResponse({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'id') String? id,
  }) = _LocationDetailGetTalentJobsResponse;

  factory LocationDetailGetTalentJobsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$LocationDetailGetTalentJobsResponseFromJson(json);
}

@freezed
class RoleGetTalentJobsResponse with _$RoleGetTalentJobsResponse {
  const factory RoleGetTalentJobsResponse({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'age_min') int? ageMin,
    @JsonKey(name: 'age_max') int? ageMax,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'payment_amount') String? paymentAmount,
    @JsonKey(name: 'payment_moderasi') String? paymentModerasi,
    @JsonKey(name: 'payment_type') String? paymentType,
    @JsonKey(name: 'count_needed') int? countNeeded,
    @JsonKey(name: 'additional_charges')
    List<AdditionalChargeGetTalentJobsResponse>? additionalCharges,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
  }) = _RoleGetTalentJobsResponse;

  factory RoleGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$RoleGetTalentJobsResponseFromJson(json);
}

@freezed
class AdditionalChargeGetTalentJobsResponse
    with _$AdditionalChargeGetTalentJobsResponse {
  const factory AdditionalChargeGetTalentJobsResponse({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'amount') String? amount,
  }) = _AdditionalChargeGetTalentJobsResponse;

  factory AdditionalChargeGetTalentJobsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$AdditionalChargeGetTalentJobsResponseFromJson(json);
}

@freezed
class ScheduleGetTalentJobsResponse with _$ScheduleGetTalentJobsResponse {
  const factory ScheduleGetTalentJobsResponse({
    @JsonKey(name: 'schedule_type') String? scheduleType,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
  }) = _ScheduleGetTalentJobsResponse;

  factory ScheduleGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleGetTalentJobsResponseFromJson(json);
}

@freezed
class ClosedQuestionGetTalentJobsResponse
    with _$ClosedQuestionGetTalentJobsResponse {
  const factory ClosedQuestionGetTalentJobsResponse({
    @JsonKey(name: 'question') String? question,
    @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion,
  }) = _ClosedQuestionGetTalentJobsResponse;

  factory ClosedQuestionGetTalentJobsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ClosedQuestionGetTalentJobsResponseFromJson(json);
}

@freezed
class ClientGetTalentJobsResponse with _$ClientGetTalentJobsResponse {
  const factory ClientGetTalentJobsResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'email') String? email,
  }) = _ClientGetTalentJobsResponse;

  factory ClientGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientGetTalentJobsResponseFromJson(json);
}

@freezed
class CategoryGetTalentJobsResponse with _$CategoryGetTalentJobsResponse {
  const factory CategoryGetTalentJobsResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
  }) = _CategoryGetTalentJobsResponse;

  factory CategoryGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryGetTalentJobsResponseFromJson(json);
}
