import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_client_my_job.freezed.dart';
part 'get_client_my_job.g.dart';

@freezed
class GetClientMyJobModel with _$GetClientMyJobModel {
  const factory GetClientMyJobModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<GetClientMyJobModelDatum>? data,
  }) = _GetClientMyJobModel;

  factory GetClientMyJobModel.fromJson(Map<String, dynamic> json) =>
      _$GetClientMyJobModelFromJson(json);
}

@freezed
class GetClientMyJobModelDatum with _$GetClientMyJobModelDatum {
  const factory GetClientMyJobModelDatum({
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
    List<GetClientMyJobModelLocationElement>? locations,
    @JsonKey(name: 'locations_talent')
    List<GetClientMyJobModelLocationElement>? locationsTalent,
    @JsonKey(name: 'schedules') List<GetClientMyJobModelSchedule>? schedules,
    @JsonKey(name: 'schedule_processes')
    List<GetClientMyJobModelSchedule>? scheduleProcesses,
    @JsonKey(name: 'roles') List<GetClientMyJobModelRole>? roles,
    @JsonKey(name: 'closed_questions')
    List<GetClientMyJobModelClosedQuestion>? closedQuestions,
    @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
    @JsonKey(name: 'client') GetClientMyJobModelClient? client,
    @JsonKey(name: 'categories') List<GetClientMyJobModelCategory>? categories,
  }) = _GetClientMyJobModelDatum;

  factory GetClientMyJobModelDatum.fromJson(Map<String, dynamic> json) =>
      _$GetClientMyJobModelDatumFromJson(json);
}

@freezed
class GetClientMyJobModelCategory with _$GetClientMyJobModelCategory {
  const factory GetClientMyJobModelCategory({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
  }) = _GetClientMyJobModelCategory;

  factory GetClientMyJobModelCategory.fromJson(Map<String, dynamic> json) =>
      _$GetClientMyJobModelCategoryFromJson(json);
}

@freezed
class GetClientMyJobModelClient with _$GetClientMyJobModelClient {
  const factory GetClientMyJobModelClient({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'email') String? email,
  }) = _GetClientMyJobModelClient;

  factory GetClientMyJobModelClient.fromJson(Map<String, dynamic> json) =>
      _$GetClientMyJobModelClientFromJson(json);
}

@freezed
class GetClientMyJobModelClosedQuestion
    with _$GetClientMyJobModelClosedQuestion {
  const factory GetClientMyJobModelClosedQuestion({
    @JsonKey(name: 'question') String? question,
    @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion,
  }) = _GetClientMyJobModelClosedQuestion;

  factory GetClientMyJobModelClosedQuestion.fromJson(
          Map<String, dynamic> json) =>
      _$GetClientMyJobModelClosedQuestionFromJson(json);
}

@freezed
class GetClientMyJobModelLocationElement
    with _$GetClientMyJobModelLocationElement {
  const factory GetClientMyJobModelLocationElement({
    @JsonKey(name: 'location_id') String? locationId,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
    @JsonKey(name: 'location') GetClientMyJobModelLocationLocation? location,
  }) = _GetClientMyJobModelLocationElement;

  factory GetClientMyJobModelLocationElement.fromJson(
          Map<String, dynamic> json) =>
      _$GetClientMyJobModelLocationElementFromJson(json);
}

@freezed
class GetClientMyJobModelLocationLocation
    with _$GetClientMyJobModelLocationLocation {
  const factory GetClientMyJobModelLocationLocation({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'id') String? id,
  }) = _GetClientMyJobModelLocationLocation;

  factory GetClientMyJobModelLocationLocation.fromJson(
          Map<String, dynamic> json) =>
      _$GetClientMyJobModelLocationLocationFromJson(json);
}

@freezed
class GetClientMyJobModelRole with _$GetClientMyJobModelRole {
  const factory GetClientMyJobModelRole({
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
    List<GetClientMyJobModelAdditionalCharge>? additionalCharges,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
  }) = _GetClientMyJobModelRole;

  factory GetClientMyJobModelRole.fromJson(Map<String, dynamic> json) =>
      _$GetClientMyJobModelRoleFromJson(json);
}

@freezed
class GetClientMyJobModelAdditionalCharge
    with _$GetClientMyJobModelAdditionalCharge {
  const factory GetClientMyJobModelAdditionalCharge({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'amount') String? amount,
  }) = _GetClientMyJobModelAdditionalCharge;

  factory GetClientMyJobModelAdditionalCharge.fromJson(
          Map<String, dynamic> json) =>
      _$GetClientMyJobModelAdditionalChargeFromJson(json);
}

@freezed
class GetClientMyJobModelSchedule with _$GetClientMyJobModelSchedule {
  const factory GetClientMyJobModelSchedule({
    @JsonKey(name: 'schedule_type') String? scheduleType,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'job_id') String? jobId,
  }) = _GetClientMyJobModelSchedule;

  factory GetClientMyJobModelSchedule.fromJson(Map<String, dynamic> json) =>
      _$GetClientMyJobModelScheduleFromJson(json);
}
