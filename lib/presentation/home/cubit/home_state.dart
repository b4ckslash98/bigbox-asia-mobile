import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  factory HomeState({
    String? fcmToken,
    @Default(0) int currentTabIndex,
    GetTalentProfile? talentProfile,
    GetTalentJobsResponse? talentJobs,
    GetAdminTotalClient? adminTotalClient,
    GetAdminTotalJob? adminTotalJob,
    GetAdminTotalJobPending? adminTotalJobPending,
    GetAdminTotalTalent? adminTotalTalent,
    GetAdminTotalTalent? clientTotalApplication,
    GetAdminTotalTalent? clientTotalJobs,

    // Tambahkan ini
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
