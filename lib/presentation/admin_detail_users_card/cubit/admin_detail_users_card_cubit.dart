import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'admin_detail_users_card_state.dart';

class AdminDetailUsersCardCubit
    extends HydratedCubit<AdminDetailUsersCardState> {
  AdminDetailUsersCardCubit(
    this._getAdminDetailTalentUseCase,
  ) : super(AdminDetailUsersCardState());

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

  @override
  AdminDetailUsersCardState? fromJson(Map<String, dynamic> json) {
    return AdminDetailUsersCardState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AdminDetailUsersCardState state) {
    return state.toJson();
  }
}
