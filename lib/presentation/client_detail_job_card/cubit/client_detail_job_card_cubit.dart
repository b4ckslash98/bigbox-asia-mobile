import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';

class ClientDetailJobCardCubit extends HydratedCubit<ClientDetailJobCardState> {
  ClientDetailJobCardCubit(
    this._getAplicationClientJobUsecase,
    this._getClientDetailJobUsecase,
    this._putClientChangeStatusApplicationUsecase,
  ) : super(ClientDetailJobCardState()) {}

  final GetAplicationClientJobUsecase _getAplicationClientJobUsecase;
  final GetClientJobDetailUsecase _getClientDetailJobUsecase;
  final PutClientChangeStatusApplicationUsecase
      _putClientChangeStatusApplicationUsecase;

  Future<void> changeStatusApplication(
      String jobId, Map<String, dynamic> data) async {
    final result = await _putClientChangeStatusApplicationUsecase(
        PutClientChangeStatusApplicationUsecaseParams(
            jobId: jobId, data: data));
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error changing status application: ${failure.message}');
      },
      (success) {
        if (success) {
          Fluttertoast.showToast(
              msg: 'Status application changed successfully');
        }
      },
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

  Future<void> getAplicationClientJob(String jobId) async {
    final result = await _getAplicationClientJobUsecase(
        GetAplicationClientJobUsecaseParams(jobId));
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error fetching applications: ${failure.message}');
      },
      (getAplicationTalent) =>
          emit(state.copyWith(getAplicationTalent: getAplicationTalent)),
    );
  }

  Future<void> loadJobData(String jobId) async {
    await Future.wait([
      getJobDetail(jobId),
      getAplicationClientJob(jobId),
    ]);
  }

  @override
  ClientDetailJobCardState? fromJson(Map<String, dynamic> json) {
    return ClientDetailJobCardState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ClientDetailJobCardState state) {
    return state.toJson();
  }
}
