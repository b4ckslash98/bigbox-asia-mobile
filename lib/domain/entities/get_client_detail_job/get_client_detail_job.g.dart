// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_detail_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDetailJobsResponseImpl _$$GetDetailJobsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDetailJobsResponseImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetDetailJobsResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetDetailJobsResponseImplToJson(
        _$GetDetailJobsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$GetDetailJobsResponseDataImpl _$$GetDetailJobsResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDetailJobsResponseDataImpl(
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
          ?.map((e) => GetDetailJobsResponseLocationElement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      locationsTalent: (json['locations_talent'] as List<dynamic>?)
          ?.map((e) => GetDetailJobsResponseLocationElement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>?)
          ?.map((e) =>
              GetDetailJobsResponseSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleProcesses: (json['schedule_processes'] as List<dynamic>?)
          ?.map((e) =>
              GetDetailJobsResponseSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) =>
              GetDetailJobsResponseRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      closedQuestions: (json['closed_questions'] as List<dynamic>?)
          ?.map((e) => GetDetailJobsResponseClosedQuestion.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      additionalCharge: json['additional_charge'] as List<dynamic>?,
      client: json['client'] == null
          ? null
          : GetDetailJobsResponseClient.fromJson(
              json['client'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              GetDetailJobsResponseCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetDetailJobsResponseDataImplToJson(
        _$GetDetailJobsResponseDataImpl instance) =>
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

_$GetDetailJobsResponseCategoryImpl
    _$$GetDetailJobsResponseCategoryImplFromJson(Map<String, dynamic> json) =>
        _$GetDetailJobsResponseCategoryImpl(
          id: json['id'] as String?,
          name: json['name'] as String?,
        );

Map<String, dynamic> _$$GetDetailJobsResponseCategoryImplToJson(
        _$GetDetailJobsResponseCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$GetDetailJobsResponseClientImpl _$$GetDetailJobsResponseClientImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDetailJobsResponseClientImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$GetDetailJobsResponseClientImplToJson(
        _$GetDetailJobsResponseClientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

_$GetDetailJobsResponseClosedQuestionImpl
    _$$GetDetailJobsResponseClosedQuestionImplFromJson(
            Map<String, dynamic> json) =>
        _$GetDetailJobsResponseClosedQuestionImpl(
          question: json['question'] as String?,
          yesOrNoQuestion: json['yes_or_no_question'] as bool?,
        );

Map<String, dynamic> _$$GetDetailJobsResponseClosedQuestionImplToJson(
        _$GetDetailJobsResponseClosedQuestionImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'yes_or_no_question': instance.yesOrNoQuestion,
    };

_$GetDetailJobsResponseLocationElementImpl
    _$$GetDetailJobsResponseLocationElementImplFromJson(
            Map<String, dynamic> json) =>
        _$GetDetailJobsResponseLocationElementImpl(
          locationId: json['location_id'] as String?,
          notes: json['notes'] as String?,
          id: json['id'] as String?,
          jobId: json['job_id'] as String?,
          location: json['location'] == null
              ? null
              : GetDetailJobsResponseLocationLocation.fromJson(
                  json['location'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetDetailJobsResponseLocationElementImplToJson(
        _$GetDetailJobsResponseLocationElementImpl instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'notes': instance.notes,
      'id': instance.id,
      'job_id': instance.jobId,
      'location': instance.location?.toJson(),
    };

_$GetDetailJobsResponseLocationLocationImpl
    _$$GetDetailJobsResponseLocationLocationImplFromJson(
            Map<String, dynamic> json) =>
        _$GetDetailJobsResponseLocationLocationImpl(
          name: json['name'] as String?,
          parentId: json['parent_id'],
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$GetDetailJobsResponseLocationLocationImplToJson(
        _$GetDetailJobsResponseLocationLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'id': instance.id,
    };

_$GetDetailJobsResponseRoleImpl _$$GetDetailJobsResponseRoleImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDetailJobsResponseRoleImpl(
      title: json['title'] as String?,
      gender: json['gender'] as String?,
      ageMin: (json['age_min'] as num?)?.toInt(),
      ageMax: (json['age_max'] as num?)?.toInt(),
      description: json['description'] as String?,
      paymentAmount: json['payment_amount'] as String?,
      paymentModerasi: json['payment_moderasi'] as String?,
      paymentType: json['payment_type'] as String?,
      countNeeded: (json['count_needed'] as num?)?.toInt(),
      additionalCharges: json['additional_charges'] as List<dynamic>?,
      id: json['id'] as String?,
      jobId: json['job_id'] as String?,
    );

Map<String, dynamic> _$$GetDetailJobsResponseRoleImplToJson(
        _$GetDetailJobsResponseRoleImpl instance) =>
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
      'additional_charges': instance.additionalCharges,
      'id': instance.id,
      'job_id': instance.jobId,
    };

_$GetDetailJobsResponseScheduleImpl
    _$$GetDetailJobsResponseScheduleImplFromJson(Map<String, dynamic> json) =>
        _$GetDetailJobsResponseScheduleImpl(
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

Map<String, dynamic> _$$GetDetailJobsResponseScheduleImplToJson(
        _$GetDetailJobsResponseScheduleImpl instance) =>
    <String, dynamic>{
      'schedule_type': instance.scheduleType,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'notes': instance.notes,
      'id': instance.id,
      'job_id': instance.jobId,
    };
