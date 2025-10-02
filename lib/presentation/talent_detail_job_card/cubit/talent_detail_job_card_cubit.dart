import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';

class TalentDetailJobCardCubit extends HydratedCubit<TalentDetailJobCardState> {
  TalentDetailJobCardCubit(
    this._getClientDetailJobUsecase,
  ) : super(TalentDetailJobCardState()) {}

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
  TalentDetailJobCardState? fromJson(Map<String, dynamic> json) {
    return TalentDetailJobCardState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TalentDetailJobCardState state) {
    return state.toJson();
  }
}
