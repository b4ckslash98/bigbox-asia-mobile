import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';

class AdminModerasiBudgetCubit extends HydratedCubit<AdminModerasiBudgetState> {
  AdminModerasiBudgetCubit(
    this._putAdminModerasiBudgetJobsUsecase,
  ) : super(AdminModerasiBudgetState()) {}
  final PutAdminModerasiBudgetJobsUsecase _putAdminModerasiBudgetJobsUsecase;

  Future<void> adminModerasiBudget(
      String jobId, List<Map<String, dynamic>> data) async {
    final result = await _putAdminModerasiBudgetJobsUsecase(
        PutAdminModerasiBudgetJobsUsecaseParams(jobId: jobId, data: data));
    result.fold((failure) => Fluttertoast.showToast(msg: failure.message),
        (success) {
      Fluttertoast.showToast(msg: 'Job change successful');
    });
  }

  @override
  AdminModerasiBudgetState? fromJson(Map<String, dynamic> json) {
    return AdminModerasiBudgetState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AdminModerasiBudgetState state) {
    return state.toJson();
  }
}
