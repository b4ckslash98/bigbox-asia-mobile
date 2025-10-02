import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'users_state.dart';

class UsersCubit extends HydratedCubit<UsersState> {
  UsersCubit(
    this._getAdminTalentUserUseCase,
    this._putAdminChangeStatusTalentUseCase,
    this._getAdminDetailTalentUseCase,
  ) : super(UsersState());

  final GetAdminTalentUsecase _getAdminTalentUserUseCase;
  final PutAdminChangeStatusTalentUsecase _putAdminChangeStatusTalentUseCase;
  final GetAdminDetailTalentUsecase _getAdminDetailTalentUseCase;

  Future<void> getAdminDetailTalent(String talentId) async {
    AppDialog.loading(message: 'Fetching talent details...');

    final result = await _getAdminDetailTalentUseCase(
        GetAdminDetailTalentUsecaseParams(talentId: talentId));
    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (talentProfile) {
        emit(state.copyWith(talentProfile: talentProfile));
      },
    );
    AppDialog.hideLoading();
  }

  Future<void> changeStatusTalent(String talentId, String talentEmail,
      bool isActive, String verificationStatus, String verificationNote) async {
    final result = await _putAdminChangeStatusTalentUseCase(
      PutAdminChangeStatusTalentUsecaseParams(
        talentId: talentId,
        talentEmail: talentEmail,
        isActive: isActive,
        verificationStatus: verificationStatus,
        verificationNote: verificationNote,
      ),
    );
    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (success) {
        fetchAdminTalent();
      },
    );
  }

  Future<void> fetchAdminTalent() async {
    AppDialog.loading(message: 'Fetching talent...');

    final result = await _getAdminTalentUserUseCase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (adminUser) {
        emit(state.copyWith(adminUser: adminUser));
      },
    );
    AppDialog.hideLoading();
  }

  @override
  UsersState? fromJson(Map<String, dynamic> json) {
    return UsersState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(UsersState state) {
    return state.toJson();
  }
}
