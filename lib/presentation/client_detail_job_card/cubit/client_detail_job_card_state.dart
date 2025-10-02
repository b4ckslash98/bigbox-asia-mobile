import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'client_detail_job_card_state.freezed.dart';
part 'client_detail_job_card_state.g.dart';

@freezed
class ClientDetailJobCardState with _$ClientDetailJobCardState {
  const ClientDetailJobCardState._();

  factory ClientDetailJobCardState({
    String? fcmToken,
    GetDetailJobsResponse? jobDetail,
    GetAplicationTalent? getAplicationTalent,
  }) = _ClientDetailJobCardState;

  factory ClientDetailJobCardState.fromJson(Map<String, dynamic> json) =>
      _$ClientDetailJobCardStateFromJson(json);
}
