import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'client_posting_job_state.freezed.dart';
part 'client_posting_job_state.g.dart';

@freezed
class ClientPostingJobState with _$ClientPostingJobState {
  const ClientPostingJobState._();

  factory ClientPostingJobState({
    String? fcmToken,
    GetLocation? getLocation,
    GetCategoriesResponse? categories,
  }) = _ClientPostingJobState;

  factory ClientPostingJobState.fromJson(Map<String, dynamic> json) =>
      _$ClientPostingJobStateFromJson(json);
}
