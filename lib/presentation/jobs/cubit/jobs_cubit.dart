import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'jobs_state.dart';

class JobsCubit extends HydratedCubit<JobsState> {
  JobsCubit(
    this._getClientMyJobsUsecase,
    this._getClientUpdateJobUsecase,
    this._getClientDetailJobUsecase,
    this._getLocationUsecase,
    this._getCategoriesUsecase,
    this._adminApproveJobsUsecase,
    this._getTalentJobsUsecase,
    this._talentApplyJobUsecase,
  ) : super(JobsState()) {}
  final GetClientMyJobUsecase _getClientMyJobsUsecase;
  final GetClientUpdateJobUsecase _getClientUpdateJobUsecase;
  final GetClientJobDetailUsecase _getClientDetailJobUsecase;
  final GetLocationUsecase _getLocationUsecase;
  final GetCategoriesUsecase _getCategoriesUsecase;
  final AdminApproveJobsUsecase _adminApproveJobsUsecase;
  final GetTalentJobsUsecase _getTalentJobsUsecase;
  final TalentApplyJobsUsecase _talentApplyJobUsecase;

  Future<void> talentApplyJob(String roleid, String jobId) async {
    final result = await _talentApplyJobUsecase(
        TalentApplyJobsUsecaseParams(roleid, jobId));
    result.fold((failure) => Fluttertoast.showToast(msg: failure.message),
        (success) {
      Fluttertoast.showToast(msg: 'Job application successful');
    });
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

  Future<void> adminApproveJob(String jobId, Map<String, dynamic> data) async {
    final result = await _adminApproveJobsUsecase(
        AdminApproveJobsUsecaseParams(jobId, data));
    result.fold((failure) => Fluttertoast.showToast(msg: failure.message),
        (success) {
      Fluttertoast.showToast(msg: 'Job approved successfully');
    });
  }

  Future<void> getCategories() async {
    final result = await _getCategoriesUsecase(NoParams());

    result.fold(
      (failure) => Fluttertoast.showToast(msg: 'Failed to fetch categories.'),
      (categories) => emit(state.copyWith(categories: categories)),
    );
  }

  Future<void> getLocation() async {
    final result = await _getLocationUsecase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error fetching location: ${failure.message}');
      },
      (location) => emit(state.copyWith(location: location)),
    );
  }

  Future<void> getMyJobs() async {
    final result = await _getClientMyJobsUsecase(NoParams());
    result.fold((failure) => Fluttertoast.showToast(msg: failure.message),
        (jobs) {
      emit(state.copyWith(myJobs: jobs));
      print("object ${state.myJobs!.data!.length}");
    });
  }

  Future<void> updateJob(
    Map<String, dynamic> data,
    String jobId,
  ) async {
    final result = await _getClientUpdateJobUsecase(
        GetClientUpdateJobUsecaseParams(data: data, jobId: jobId));
    result.fold(
      (failure) => Fluttertoast.showToast(msg: failure.message),
      (success) => Fluttertoast.showToast(msg: 'Job updated successfully'),
    );
  }

  Future<void> getJobDetail(String jobId) async {
    final result = await _getClientDetailJobUsecase(
        GetClientJobDetailUsecaseParams(jobId));
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error fetching job detail: ${failure.message}');
      },
      (jobDetail) => emit(state.copyWith(jobDetail: jobDetail)),
    );
  }

  @override
  JobsState? fromJson(Map<String, dynamic> json) {
    return JobsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(JobsState state) {
    return state.toJson();
  }
}
