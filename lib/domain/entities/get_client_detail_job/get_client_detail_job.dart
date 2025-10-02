// To parse this JSON data, do
//
//     final getDetailJobsResponse = getDetailJobsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_client_detail_job.freezed.dart';
part 'get_client_detail_job.g.dart';

@freezed
class GetDetailJobsResponse with _$GetDetailJobsResponse {
  const factory GetDetailJobsResponse({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') GetDetailJobsResponseData? data,
  }) = _GetDetailJobsResponse;

  factory GetDetailJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDetailJobsResponseFromJson(json);
}

@freezed
class GetDetailJobsResponseData with _$GetDetailJobsResponseData {
  const factory GetDetailJobsResponseData({
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
    @JsonKey(name: 'locations')
    List<GetDetailJobsResponseLocationElement>? locations,
    @JsonKey(name: 'locations_talent')
    List<GetDetailJobsResponseLocationElement>? locationsTalent,
    @JsonKey(name: 'schedules') List<GetDetailJobsResponseSchedule>? schedules,
    @JsonKey(name: 'schedule_processes')
    List<GetDetailJobsResponseSchedule>? scheduleProcesses,
    @JsonKey(name: 'roles') List<GetDetailJobsResponseRole>? roles,
    @JsonKey(name: 'closed_questions')
    List<GetDetailJobsResponseClosedQuestion>? closedQuestions,
    @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
    @JsonKey(name: 'client') GetDetailJobsResponseClient? client,
    @JsonKey(name: 'categories')
    List<GetDetailJobsResponseCategory>? categories,
  }) = _GetDetailJobsResponseData;

  factory GetDetailJobsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetDetailJobsResponseDataFromJson(json);
}

@freezed
class GetDetailJobsResponseCategory with _$GetDetailJobsResponseCategory {
  const factory GetDetailJobsResponseCategory({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
  }) = _GetDetailJobsResponseCategory;

  factory GetDetailJobsResponseCategory.fromJson(Map<String, dynamic> json) =>
      _$GetDetailJobsResponseCategoryFromJson(json);
}

@freezed
class GetDetailJobsResponseClient with _$GetDetailJobsResponseClient {
  const factory GetDetailJobsResponseClient({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'email') String? email,
  }) = _GetDetailJobsResponseClient;

  factory GetDetailJobsResponseClient.fromJson(Map<String, dynamic> json) =>
      _$GetDetailJobsResponseClientFromJson(json);
}

@freezed
class GetDetailJobsResponseClosedQuestion
    with _$GetDetailJobsResponseClosedQuestion {
  const factory GetDetailJobsResponseClosedQuestion({
    @JsonKey(name: 'question') String? question,
    @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion,
  }) = _GetDetailJobsResponseClosedQuestion;

  factory GetDetailJobsResponseClosedQuestion.fromJson(
          Map<String, dynamic> json) =>
      _$GetDetailJobsResponseClosedQuestionFromJson(json);
}

@freezed
class GetDetailJobsResponseLocationElement
    with _$GetDetailJobsResponseLocationElement {
  const factory GetDetailJobsResponseLocationElement({
    @JsonKey(name: 'location_id') String? locationId,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
    @JsonKey(name: 'location') GetDetailJobsResponseLocationLocation? location,
  }) = _GetDetailJobsResponseLocationElement;

  factory GetDetailJobsResponseLocationElement.fromJson(
          Map<String, dynamic> json) =>
      _$GetDetailJobsResponseLocationElementFromJson(json);
}

@freezed
class GetDetailJobsResponseLocationLocation
    with _$GetDetailJobsResponseLocationLocation {
  const factory GetDetailJobsResponseLocationLocation({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'parent_id') dynamic parentId,
    @JsonKey(name: 'id') String? id,
  }) = _GetDetailJobsResponseLocationLocation;

  factory GetDetailJobsResponseLocationLocation.fromJson(
          Map<String, dynamic> json) =>
      _$GetDetailJobsResponseLocationLocationFromJson(json);
}

@freezed
class GetDetailJobsResponseRole with _$GetDetailJobsResponseRole {
  const factory GetDetailJobsResponseRole({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'age_min') int? ageMin,
    @JsonKey(name: 'age_max') int? ageMax,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'payment_amount') String? paymentAmount,
    @JsonKey(name: 'payment_moderasi') String? paymentModerasi,
    @JsonKey(name: 'payment_type') String? paymentType,
    @JsonKey(name: 'count_needed') int? countNeeded,
    @JsonKey(name: 'additional_charges') List<dynamic>? additionalCharges,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
  }) = _GetDetailJobsResponseRole;

  factory GetDetailJobsResponseRole.fromJson(Map<String, dynamic> json) =>
      _$GetDetailJobsResponseRoleFromJson(json);
}

@freezed
class GetDetailJobsResponseSchedule with _$GetDetailJobsResponseSchedule {
  const factory GetDetailJobsResponseSchedule({
    @JsonKey(name: 'schedule_type') String? scheduleType,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
  }) = _GetDetailJobsResponseSchedule;

  factory GetDetailJobsResponseSchedule.fromJson(Map<String, dynamic> json) =>
      _$GetDetailJobsResponseScheduleFromJson(json);
}
