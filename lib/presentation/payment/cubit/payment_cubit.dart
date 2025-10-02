import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'payment_state.dart';

class PaymentCubit extends HydratedCubit<PaymentState> {
  PaymentCubit(
      this._getFeeRegisterTalentUsecase,
      this._getListPaymentMethodUsecase,
      this._postSetPaymentChargeUsecase,
      this._getTalentProfileUsecase)
      : super(PaymentState());

  final GetFeeRegisterTalentUsecase _getFeeRegisterTalentUsecase;
  final GetListPaymentMethodUsecase _getListPaymentMethodUsecase;
  final PostSetPaymentChargeUsecase _postSetPaymentChargeUsecase;
  final GetTalentProfileUsecase _getTalentProfileUsecase;

  Future<void> getProfile() async {
    AppDialog.loading(message: 'Fetching profile...');

    final result = await _getTalentProfileUsecase(NoParams());
    AppDialog.hideLoading();

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to fetch profile.');
      },
      (profile) async {
        emit(state.copyWith(profile: profile));
      },
    );
  }

  getFeeRegisterTalent() async {
    final result = await _getFeeRegisterTalentUsecase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (fee) {
        emit(state.copyWith(feeRegisterTalent: fee));
      },
    );
  }

  getListPaymentMethod() async {
    final result = await _getListPaymentMethodUsecase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (list) {
        emit(state.copyWith(listPaymentMethod: list));
      },
    );
  }

  postSetPaymentCharge(String paymentMethodId) async {
    final result = await _postSetPaymentChargeUsecase(
      PostSetPaymentChargeUsecaseParam(paymentMethodId: paymentMethodId),
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
        Fluttertoast.showToast(
          msg: 'Payment method set successfully',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
        emit(state.copyWith(
          chargeVirtualAccountPaymentSucces: success,
        ));
        print("Payment method set successfully ${success}");
      },
    );
  }

  @override
  PaymentState? fromJson(Map<String, dynamic> json) {
    return PaymentState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PaymentState state) {
    return state.toJson();
  }
}
