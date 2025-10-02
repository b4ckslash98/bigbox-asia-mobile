import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'client_search_talent_state.freezed.dart';
part 'client_search_talent_state.g.dart';

@freezed
class ClientSearchTalentState with _$ClientSearchTalentState {
  const ClientSearchTalentState._();

  factory ClientSearchTalentState({
    GetClientSearchTalent? talentResults,
  }) = _ClientSearchTalentState;

  factory ClientSearchTalentState.fromJson(Map<String, dynamic> json) =>
      _$ClientSearchTalentStateFromJson(json);
}
