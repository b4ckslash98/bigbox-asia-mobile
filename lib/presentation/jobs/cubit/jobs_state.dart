import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'jobs_state.freezed.dart';
part 'jobs_state.g.dart';

@freezed
class JobsState with _$JobsState {
  const JobsState._();

  factory JobsState({
    String? fcmToken,
    // Tambahkan ini
    GetClientMyJobModel? myJobs,
    GetClientMyJobModel? adminJobs,
    GetDetailJobsResponse? jobDetail,
    GetDetailJobsResponse? adminJobsDetail,
    GetLocation? location,
    GetCategoriesResponse? categories,
    GetTalentJobsResponse? talentJobs,
  }) = _JobsState;

  factory JobsState.fromJson(Map<String, dynamic> json) =>
      _$JobsStateFromJson(json);
}
