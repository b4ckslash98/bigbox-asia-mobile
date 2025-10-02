// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_talent_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientSearchTalentStateImpl _$$ClientSearchTalentStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientSearchTalentStateImpl(
      talentResults: json['talentResults'] == null
          ? null
          : GetClientSearchTalent.fromJson(
              json['talentResults'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientSearchTalentStateImplToJson(
        _$ClientSearchTalentStateImpl instance) =>
    <String, dynamic>{
      'talentResults': instance.talentResults?.toJson(),
    };
