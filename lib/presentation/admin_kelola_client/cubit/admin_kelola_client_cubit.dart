import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'admin_kelola_client_state.dart';

class AdminKelolaClientCubit extends HydratedCubit<AdminKelolaClientState> {
  AdminKelolaClientCubit(
      this._getAdminClientUseCase, this._putAdminClientApproveUsecase)
      : super(AdminKelolaClientState());

  final GetAdminClientUsecase _getAdminClientUseCase;
  final PutAdminClientApproveUsecase _putAdminClientApproveUsecase;

  Future<void> approveClient(String email, String status) async {
    AppDialog.loading(message: 'Mengupdate status client...');

    final result = await _putAdminClientApproveUsecase(
      PutAdminClientApproveUsecaseParams(status: status, email: email),
    );

    AppDialog.hideLoading();

    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (success) {
        if (success) {
          // Show success message based on status
          String message = '';
          switch (status.toUpperCase()) {
            case 'APPROVED':
              message = 'Client berhasil disetujui';
              break;
            case 'REJECTED':
              message = 'Client berhasil ditolak';
              break;
            default:
              message = 'Status client berhasil diupdate';
          }

          Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white,
          );

          fetchAdminClient();
        }
      },
    );
  }

  Future<void> fetchAdminClient() async {
    final result = await _getAdminClientUseCase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(
          msg: failure.message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      },
      (adminClient) {
        emit(state.copyWith(adminClient: adminClient));
      },
    );
  }

  @override
  AdminKelolaClientState? fromJson(Map<String, dynamic> json) {
    return AdminKelolaClientState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AdminKelolaClientState state) {
    return state.toJson();
  }
}
