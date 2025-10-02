import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'talent_jadwal_state.freezed.dart';
part 'talent_jadwal_state.g.dart';

@freezed
class TalentJadwalState with _$TalentJadwalState {
  const TalentJadwalState._();

  factory TalentJadwalState({
    String? fcmToken,
    GetScheduleTalent? scheduleTalent,
  }) = _TalentJadwalState;

  factory TalentJadwalState.fromJson(Map<String, dynamic> json) =>
      _$TalentJadwalStateFromJson(json);
}
