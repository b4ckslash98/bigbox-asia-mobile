// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_talent_jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTalentJobsResponseImpl _$$GetTalentJobsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTalentJobsResponseImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DatumGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetTalentJobsResponseImplToJson(
        _$GetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetTalentJobsResponseImpl _$$DatumGetTalentJobsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetTalentJobsResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      statusNote: json['status_note'] as String?,
      views: (json['views'] as num?)?.toInt(),
      totalApplications: (json['total_applications'] as num?)?.toInt(),
      conversionRate: (json['conversion_rate'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) =>
              LocationGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationsTalent: (json['locations_talent'] as List<dynamic>?)
          ?.map((e) =>
              LocationGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>?)
          ?.map((e) =>
              ScheduleGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleProcesses: (json['schedule_processes'] as List<dynamic>?)
          ?.map((e) =>
              ScheduleGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) =>
              RoleGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      closedQuestions: (json['closed_questions'] as List<dynamic>?)
          ?.map((e) => ClosedQuestionGetTalentJobsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      additionalCharge: json['additional_charge'] as List<dynamic>?,
      client: json['client'] == null
          ? null
          : ClientGetTalentJobsResponse.fromJson(
              json['client'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              CategoryGetTalentJobsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumGetTalentJobsResponseImplToJson(
        _$DatumGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'status_note': instance.statusNote,
      'views': instance.views,
      'total_applications': instance.totalApplications,
      'conversion_rate': instance.conversionRate,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'locations': instance.locations?.map((e) => e.toJson()).toList(),
      'locations_talent':
          instance.locationsTalent?.map((e) => e.toJson()).toList(),
      'schedules': instance.schedules?.map((e) => e.toJson()).toList(),
      'schedule_processes':
          instance.scheduleProcesses?.map((e) => e.toJson()).toList(),
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'closed_questions':
          instance.closedQuestions?.map((e) => e.toJson()).toList(),
      'additional_charge': instance.additionalCharge,
      'client': instance.client?.toJson(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
    };

_$LocationGetTalentJobsResponseImpl
    _$$LocationGetTalentJobsResponseImplFromJson(Map<String, dynamic> json) =>
        _$LocationGetTalentJobsResponseImpl(
          locationId: json['location_id'] as String?,
          notes: json['notes'] as String?,
          id: json['id'] as String?,
          jobId: json['job_id'] as String?,
          location: json['location'] == null
              ? null
              : LocationDetailGetTalentJobsResponse.fromJson(
                  json['location'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$LocationGetTalentJobsResponseImplToJson(
        _$LocationGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'notes': instance.notes,
      'id': instance.id,
      'job_id': instance.jobId,
      'location': instance.location?.toJson(),
    };

_$LocationDetailGetTalentJobsResponseImpl
    _$$LocationDetailGetTalentJobsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$LocationDetailGetTalentJobsResponseImpl(
          name: json['name'] as String?,
          parentId: json['parent_id'] as String?,
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$LocationDetailGetTalentJobsResponseImplToJson(
        _$LocationDetailGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'id': instance.id,
    };

_$RoleGetTalentJobsResponseImpl _$$RoleGetTalentJobsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RoleGetTalentJobsResponseImpl(
      title: json['title'] as String?,
      gender: json['gender'] as String?,
      ageMin: (json['age_min'] as num?)?.toInt(),
      ageMax: (json['age_max'] as num?)?.toInt(),
      description: json['description'] as String?,
      paymentAmount: json['payment_amount'] as String?,
      paymentModerasi: json['payment_moderasi'] as String?,
      paymentType: json['payment_type'] as String?,
      countNeeded: (json['count_needed'] as num?)?.toInt(),
      additionalCharges: (json['additional_charges'] as List<dynamic>?)
          ?.map((e) => AdditionalChargeGetTalentJobsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      jobId: json['job_id'] as String?,
    );

Map<String, dynamic> _$$RoleGetTalentJobsResponseImplToJson(
        _$RoleGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'gender': instance.gender,
      'age_min': instance.ageMin,
      'age_max': instance.ageMax,
      'description': instance.description,
      'payment_amount': instance.paymentAmount,
      'payment_moderasi': instance.paymentModerasi,
      'payment_type': instance.paymentType,
      'count_needed': instance.countNeeded,
      'additional_charges':
          instance.additionalCharges?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'job_id': instance.jobId,
    };

_$AdditionalChargeGetTalentJobsResponseImpl
    _$$AdditionalChargeGetTalentJobsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$AdditionalChargeGetTalentJobsResponseImpl(
          description: json['description'] as String?,
          amount: json['amount'] as String?,
        );

Map<String, dynamic> _$$AdditionalChargeGetTalentJobsResponseImplToJson(
        _$AdditionalChargeGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
    };

_$ScheduleGetTalentJobsResponseImpl
    _$$ScheduleGetTalentJobsResponseImplFromJson(Map<String, dynamic> json) =>
        _$ScheduleGetTalentJobsResponseImpl(
          scheduleType: json['schedule_type'] as String?,
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
          notes: json['notes'] as String?,
          id: json['id'] as String?,
          jobId: json['job_id'] as String?,
        );

Map<String, dynamic> _$$ScheduleGetTalentJobsResponseImplToJson(
        _$ScheduleGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'schedule_type': instance.scheduleType,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'notes': instance.notes,
      'id': instance.id,
      'job_id': instance.jobId,
    };

_$ClosedQuestionGetTalentJobsResponseImpl
    _$$ClosedQuestionGetTalentJobsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ClosedQuestionGetTalentJobsResponseImpl(
          question: json['question'] as String?,
          yesOrNoQuestion: json['yes_or_no_question'] as bool?,
        );

Map<String, dynamic> _$$ClosedQuestionGetTalentJobsResponseImplToJson(
        _$ClosedQuestionGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'yes_or_no_question': instance.yesOrNoQuestion,
    };

_$ClientGetTalentJobsResponseImpl _$$ClientGetTalentJobsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientGetTalentJobsResponseImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ClientGetTalentJobsResponseImplToJson(
        _$ClientGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

_$CategoryGetTalentJobsResponseImpl
    _$$CategoryGetTalentJobsResponseImplFromJson(Map<String, dynamic> json) =>
        _$CategoryGetTalentJobsResponseImpl(
          id: json['id'] as String?,
          name: json['name'] as String?,
        );

Map<String, dynamic> _$$CategoryGetTalentJobsResponseImplToJson(
        _$CategoryGetTalentJobsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
