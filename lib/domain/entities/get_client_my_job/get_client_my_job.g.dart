// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_my_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetClientMyJobModelImpl _$$GetClientMyJobModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientMyJobModelImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              GetClientMyJobModelDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetClientMyJobModelImplToJson(
        _$GetClientMyJobModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$GetClientMyJobModelDatumImpl _$$GetClientMyJobModelDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientMyJobModelDatumImpl(
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
          ?.map((e) => GetClientMyJobModelLocationElement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      locationsTalent: (json['locations_talent'] as List<dynamic>?)
          ?.map((e) => GetClientMyJobModelLocationElement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>?)
          ?.map((e) =>
              GetClientMyJobModelSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduleProcesses: (json['schedule_processes'] as List<dynamic>?)
          ?.map((e) =>
              GetClientMyJobModelSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) =>
              GetClientMyJobModelRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      closedQuestions: (json['closed_questions'] as List<dynamic>?)
          ?.map((e) => GetClientMyJobModelClosedQuestion.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      additionalCharge: json['additional_charge'] as List<dynamic>?,
      client: json['client'] == null
          ? null
          : GetClientMyJobModelClient.fromJson(
              json['client'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              GetClientMyJobModelCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetClientMyJobModelDatumImplToJson(
        _$GetClientMyJobModelDatumImpl instance) =>
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

_$GetClientMyJobModelCategoryImpl _$$GetClientMyJobModelCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientMyJobModelCategoryImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GetClientMyJobModelCategoryImplToJson(
        _$GetClientMyJobModelCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$GetClientMyJobModelClientImpl _$$GetClientMyJobModelClientImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientMyJobModelClientImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$GetClientMyJobModelClientImplToJson(
        _$GetClientMyJobModelClientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

_$GetClientMyJobModelClosedQuestionImpl
    _$$GetClientMyJobModelClosedQuestionImplFromJson(
            Map<String, dynamic> json) =>
        _$GetClientMyJobModelClosedQuestionImpl(
          question: json['question'] as String?,
          yesOrNoQuestion: json['yes_or_no_question'] as bool?,
        );

Map<String, dynamic> _$$GetClientMyJobModelClosedQuestionImplToJson(
        _$GetClientMyJobModelClosedQuestionImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'yes_or_no_question': instance.yesOrNoQuestion,
    };

_$GetClientMyJobModelLocationElementImpl
    _$$GetClientMyJobModelLocationElementImplFromJson(
            Map<String, dynamic> json) =>
        _$GetClientMyJobModelLocationElementImpl(
          locationId: json['location_id'] as String?,
          notes: json['notes'] as String?,
          id: json['id'] as String?,
          jobId: json['job_id'] as String?,
          location: json['location'] == null
              ? null
              : GetClientMyJobModelLocationLocation.fromJson(
                  json['location'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetClientMyJobModelLocationElementImplToJson(
        _$GetClientMyJobModelLocationElementImpl instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'notes': instance.notes,
      'id': instance.id,
      'job_id': instance.jobId,
      'location': instance.location?.toJson(),
    };

_$GetClientMyJobModelLocationLocationImpl
    _$$GetClientMyJobModelLocationLocationImplFromJson(
            Map<String, dynamic> json) =>
        _$GetClientMyJobModelLocationLocationImpl(
          name: json['name'] as String?,
          parentId: json['parent_id'] as String?,
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$GetClientMyJobModelLocationLocationImplToJson(
        _$GetClientMyJobModelLocationLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'id': instance.id,
    };

_$GetClientMyJobModelRoleImpl _$$GetClientMyJobModelRoleImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientMyJobModelRoleImpl(
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
          ?.map((e) => GetClientMyJobModelAdditionalCharge.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      jobId: json['job_id'] as String?,
    );

Map<String, dynamic> _$$GetClientMyJobModelRoleImplToJson(
        _$GetClientMyJobModelRoleImpl instance) =>
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

_$GetClientMyJobModelAdditionalChargeImpl
    _$$GetClientMyJobModelAdditionalChargeImplFromJson(
            Map<String, dynamic> json) =>
        _$GetClientMyJobModelAdditionalChargeImpl(
          description: json['description'] as String?,
          amount: json['amount'] as String?,
        );

Map<String, dynamic> _$$GetClientMyJobModelAdditionalChargeImplToJson(
        _$GetClientMyJobModelAdditionalChargeImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
    };

_$GetClientMyJobModelScheduleImpl _$$GetClientMyJobModelScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$GetClientMyJobModelScheduleImpl(
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

Map<String, dynamic> _$$GetClientMyJobModelScheduleImplToJson(
        _$GetClientMyJobModelScheduleImpl instance) =>
    <String, dynamic>{
      'schedule_type': instance.scheduleType,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'notes': instance.notes,
      'id': instance.id,
      'job_id': instance.jobId,
    };
