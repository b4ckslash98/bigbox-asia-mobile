// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_schedule_talent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetScheduleTalentImpl _$$GetScheduleTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$GetScheduleTalentImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => DatumGetScheduleTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetScheduleTalentImplToJson(
        _$GetScheduleTalentImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetScheduleTalentImpl _$$DatumGetScheduleTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetScheduleTalentImpl(
      date: _dateFromJson(json['date'] as String?),
      status: json['status'] as String?,
      userId: json['user_id'] as String?,
      notes: json['notes'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DatumGetScheduleTalentImplToJson(
        _$DatumGetScheduleTalentImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'user_id': instance.userId,
      'notes': instance.notes,
      'id': instance.id,
    };
