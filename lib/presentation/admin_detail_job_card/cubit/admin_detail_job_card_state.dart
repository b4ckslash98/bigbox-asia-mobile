import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'admin_detail_job_card_state.freezed.dart';
part 'admin_detail_job_card_state.g.dart';

@freezed
class AdminDetailJobCardState with _$AdminDetailJobCardState {
  const AdminDetailJobCardState._();

  factory AdminDetailJobCardState({
    String? fcmToken,
    GetDetailJobsResponse? jobDetail,
  }) = _AdminDetailJobCardState;

  factory AdminDetailJobCardState.fromJson(Map<String, dynamic> json) =>
      _$AdminDetailJobCardStateFromJson(json);
}
