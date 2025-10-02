import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'home_state.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  HomeCubit(
    this._getTalentProfileUsecase,
    this._getTalentJobsUsecase,
    this._talentApplyJobUsecase,
    this._getadminTotalClientUsecase,
    this._getadminTotalJobUsecase,
    this._getadminTotalJobPendingUsecase,
    this._getadminTotalTalentUsecase,
    this._getClientTotalApplicationUsecase,
    this._getClientTotalJobsUsecase,
  ) : super(HomeState()) {}
  final GetTalentProfileUsecase _getTalentProfileUsecase;
  final GetTalentJobsUsecase _getTalentJobsUsecase;
  final TalentApplyJobsUsecase _talentApplyJobUsecase;
  final GetAdminTotalClientUsecase _getadminTotalClientUsecase;
  final GetAdminTotalJobUsecase _getadminTotalJobUsecase;
  final GetAdminTotalJobPendingUsecase _getadminTotalJobPendingUsecase;
  final GetAdminTotalTalentUsecase _getadminTotalTalentUsecase;
  final GetClientTotalApplicationUsecase _getClientTotalApplicationUsecase;
  final GetClientTotalJobsUsecase _getClientTotalJobsUsecase;
  Future<void> initializeByRole(UserRole? role) async {
    switch (role) {
      case UserRole.admin:
        await _initializeAdmin();
        break;
      case UserRole.client:
        await _initializeClient();
        break;
      case UserRole.talent:
        await _initializeTalent();
        break;
      default:
        await _initializeClient();
        break;
    }
  }

  Future<void> _initializeAdmin() async {
    await getAdminTotalClient();
    await getAdminTotalJob();
    await getAdminTotalJobPending();
    await getAdminTotalTalent();
  }

  Future<void> _initializeClient() async {
    await getClientTotalApplication();
    await getClientTotalJobs();
  }

  Future<void> _initializeTalent() async {
    await getProfile();
    await getTalentJobs();
  }

  Future<void> getClientTotalApplication() async {
    final result = await _getClientTotalApplicationUsecase(NoParams());
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => emit(state.copyWith(clientTotalApplication: success)),
    );
  }

  Future<void> getClientTotalJobs() async {
    final result = await _getClientTotalJobsUsecase(NoParams());
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => emit(state.copyWith(clientTotalJobs: success)),
    );
  }

  Future<void> getAdminTotalClient() async {
    final result = await _getadminTotalClientUsecase(NoParams());
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => emit(state.copyWith(adminTotalClient: success)),
    );
  }

  Future<void> getAdminTotalJob() async {
    final result = await _getadminTotalJobUsecase(NoParams());
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => emit(state.copyWith(adminTotalJob: success)),
    );
  }

  Future<void> getAdminTotalJobPending() async {
    final result = await _getadminTotalJobPendingUsecase(NoParams());
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => emit(state.copyWith(adminTotalJobPending: success)),
    );
  }

  Future<void> getAdminTotalTalent() async {
    final result = await _getadminTotalTalentUsecase(NoParams());
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => emit(state.copyWith(adminTotalTalent: success)),
    );
  }

  Future<void> talentApplyJob(String roleid, String jobId) async {
    final result = await _talentApplyJobUsecase(
        TalentApplyJobsUsecaseParams(roleid, jobId));
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => Fluttertoast.showToast(msg: 'Job application successful'),
    );
  }

  Future<void> getTalentJobs() async {
    final result = await _getTalentJobsUsecase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error fetching talent jobs: ${failure.message}');
      },
      (jobs) => emit(state.copyWith(talentJobs: jobs)),
    );
  }

  Future<void> getProfile() async {
    AppDialog.loading(message: 'Fetching profile...');

    final result = await _getTalentProfileUsecase(NoParams());
    AppDialog.hideLoading();

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to fetch profile.');
      },
      (profile) async {
        print("Profile fetched: ${profile.data?.profile?.name}");
        // Cek payment status terlebih dahulu
        if (profile.data?.paymentStatus == false) {
          router.replace(const PaymentRoute());
          return;
        }

        // Jika payment status true, baru cek profile
        if (profile.data?.profile == null) {
          Fluttertoast.showToast(msg: 'Profile data is empty.');
          router.replace(const CompleteProfileRoute());
          return;
        }

        emit(state.copyWith(talentProfile: profile));
      },
    );
  }

  void changeTabIndex(int index) {
    emit(state.copyWith(currentTabIndex: index));
  }

  void goToAnalytics() {
    emit(state.copyWith(currentTabIndex: 1));
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    return HomeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    return state.toJson();
  }
}
