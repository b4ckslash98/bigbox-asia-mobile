import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../domain/entities/master_payment_code/master_payment_code.dart';
import '../../../lib.dart';

class AdminAddTalentCubit extends HydratedCubit<AdminAddTalentState> {
  AdminAddTalentCubit(
    this._postAdminAddTalentUsecase,
    this._getMasterPaymentCodeUsecase,
  ) : super(AdminAddTalentState()) {
    getMasterPaymentCode();
  }

  final PostAdminAddTalentUsecase _postAdminAddTalentUsecase;
  final GetMasterPaymentCodeUsecase _getMasterPaymentCodeUsecase;

  Future<void> getMasterPaymentCode() async {
    emit(state.copyWith(isLoading: true));

    final result = await _getMasterPaymentCodeUsecase(NoParams());
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        Fluttertoast.showToast(msg: failure.message);
        print('Error getting master payment code: ${failure.message}');
      },
      (success) {
        emit(state.copyWith(
          isLoading: false,
          paymentCodes: success.data ?? [],
        ));
        Fluttertoast.showToast(
            msg: 'Master payment code retrieved successfully');
      },
    );
  }

  void selectPaymentCode(String paymentCodeId) {
    emit(state.copyWith(selectedPaymentCodeId: paymentCodeId));
  }

  Future<void> addTalent(String email, String password) async {
    if (state.selectedPaymentCodeId == null) {
      Fluttertoast.showToast(msg: 'Please select a payment code');
      return;
    }

    emit(state.copyWith(isAddingTalent: true));

    final data = {
      "email": email,
      "password": password,
      "role": "talent",
      "payment_code": state.selectedPaymentCodeId,
    };

    final result = await _postAdminAddTalentUsecase(
      PostAdminAddTalentUsecaseParam(data: data),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isAddingTalent: false));
        Fluttertoast.showToast(msg: failure.message);
        print('Error adding talent: ${failure.message}');
      },
      (success) {
        emit(state.copyWith(isAddingTalent: false));
        Fluttertoast.showToast(msg: 'Talent added successfully');
        // Clear form after success
        emit(state.copyWith(selectedPaymentCodeId: null));
      },
    );
  }

  @override
  AdminAddTalentState? fromJson(Map<String, dynamic> json) {
    return AdminAddTalentState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AdminAddTalentState state) {
    return state.toJson();
  }
}
