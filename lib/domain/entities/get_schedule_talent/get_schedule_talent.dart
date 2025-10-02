// To parse this JSON data, do
//
//     final getScheduleTalent = getScheduleTalentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_schedule_talent.freezed.dart';
part 'get_schedule_talent.g.dart';

@freezed
class GetScheduleTalent with _$GetScheduleTalent {
  const factory GetScheduleTalent({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetScheduleTalent>? data,
  }) = _GetScheduleTalent;

  factory GetScheduleTalent.fromJson(Map<String, dynamic> json) =>
      _$GetScheduleTalentFromJson(json);
}

@freezed
class DatumGetScheduleTalent with _$DatumGetScheduleTalent {
  const factory DatumGetScheduleTalent({
    @JsonKey(name: 'date', fromJson: _dateFromJson) DateTime? date,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'id') String? id,
  }) = _DatumGetScheduleTalent;

  factory DatumGetScheduleTalent.fromJson(Map<String, dynamic> json) =>
      _$DatumGetScheduleTalentFromJson(json);
}

DateTime? _dateFromJson(String? date) =>
    date == null ? null : DateTime.parse(date).toLocal();
