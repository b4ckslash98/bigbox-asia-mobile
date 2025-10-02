import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'talent_detail_job_card_state.freezed.dart';
part 'talent_detail_job_card_state.g.dart';

@freezed
class TalentDetailJobCardState with _$TalentDetailJobCardState {
  const TalentDetailJobCardState._();

  factory TalentDetailJobCardState({
    String? fcmToken,
    GetDetailJobsResponse? jobDetail,
  }) = _TalentDetailJobCardState;

  factory TalentDetailJobCardState.fromJson(Map<String, dynamic> json) =>
      _$TalentDetailJobCardStateFromJson(json);
}
