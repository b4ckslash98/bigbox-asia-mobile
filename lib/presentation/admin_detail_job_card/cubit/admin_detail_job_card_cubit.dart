import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';

class AdminDetailJobCardCubit extends HydratedCubit<AdminDetailJobCardState> {
  AdminDetailJobCardCubit(
    this._getClientDetailJobUsecase,
  ) : super(AdminDetailJobCardState()) {}

  final GetClientJobDetailUsecase _getClientDetailJobUsecase;

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
  AdminDetailJobCardState? fromJson(Map<String, dynamic> json) {
    return AdminDetailJobCardState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AdminDetailJobCardState state) {
    return state.toJson();
  }
}
