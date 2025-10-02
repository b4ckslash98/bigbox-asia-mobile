import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import '../../pin_setup/view/pin_setup_screen.dart';
import '../../../core/app_lifecycle_observer.dart';
import '../../../core/pin_manager.dart';

bool get isLoggedIn =>
    router.navigatorKey.currentContext!.read<AuthCubit>().state.isAuthenticated;

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit(
    this._loginUseCase,
    this._completeProfileTalentUseCase,
    this._getTalentProfileUsecase,
    this._getLocationUseCase,
    this._getCategoriesUsecase,
    this._postUploadUsecase,
    this._registerUsecase,
    this._postConvertStringNameUsecase,
  ) : super(AuthState()) {}

  final LoginUseCase _loginUseCase;
  final CompleteProfileTalentUseCase _completeProfileTalentUseCase;
  final GetTalentProfileUsecase _getTalentProfileUsecase;
  final GetLocationUsecase _getLocationUseCase;
  final PostUploadUsecase _postUploadUsecase;
  final RegisterUsecase _registerUsecase;
  final GetCategoriesUsecase _getCategoriesUsecase;
  final PostConvertStringNameUsecase _postConvertStringNameUsecase;

  Future<void> convertStringName(String name) async {
    final result = await _postConvertStringNameUsecase(
        PostConvertStringNameUsecaseParam(name: name));
    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to convert string name.');
      },
      (r) async {
        emit(state.copyWith(convertedName: r));
        print("Converted name: $r");
        Fluttertoast.showToast(msg: 'String name converted successfully.');
      },
    );
  }

  Future<void> getCategories() async {
    final result = await _getCategoriesUsecase(NoParams());

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to fetch categories.');
      },
      (r) async {
        emit(state.copyWith(categories: r));
        print("xixi $r");
      },
    );
  }

  register(String email, String password, String role) async {
    AppDialog.loading(message: 'Registering...');

    final result = await _registerUsecase(
        RegisterUsecaseParam(email: email, password: password, role: role));
    AppDialog.hideLoading();

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Registration failed.');
      },
      (r) async {
        if (r) {
          showModalBottomSheet(
            context: router.navigatorKey.currentContext!,
            isDismissible: false,
            enableDrag: false,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.verified_user,
                      color: Colors.green, size: 48),
                  const SizedBox(height: 16),
                  const Text(
                    'Akun berhasil dibuat!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Akun Anda sedang dalam proses verifikasi oleh admin. Silakan cek Akun Anda secara berkala.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.maybePop();
                        context.router.maybePop();
                      },
                      child: const Text('Tutup'),
                    ),
                  ),
                ],
              ),
            ),
          );
          return;
        }
      },
    );

    router.reevaluateGuards();
  }

  Future<Map<String, dynamic>?> uploadFile(File filePath) async {
    AppDialog.loading(message: 'Uploading file...');
    final result = await _postUploadUsecase(PostUploadParam(file: filePath));
    AppDialog.hideLoading();

    return await result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to upload file.');
        return null;
      },
      (r) async {
        Fluttertoast.showToast(msg: 'File uploaded successfully.');
        return r; // r harus berupa Map<String, dynamic> hasil response
      },
    );
  }

  Future<void> getLocation() async {
    AppDialog.loading(message: 'Fetching location...');

    final result = await _getLocationUseCase(NoParams());
    AppDialog.hideLoading();

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to fetch location.');
      },
      (location) async {
        emit(state.copyWith(location: location));
      },
    );
  }

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

  Future<void> completeProfileTalent(Map<String, dynamic> data) async {
    AppDialog.loading(message: 'Completing profile...');

    final result = await _completeProfileTalentUseCase(
        CompleteProfileTalentParam(data: data));
    AppDialog.hideLoading();

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to complete profile.');
      },
      (r) async {
        if (r) {
          Fluttertoast.showToast(msg: 'Profile completed successfully.');
          router.pushAndPopUntil(const ProfileRoute(), predicate: (_) => false);
          return;
        }
      },
    );

    router.reevaluateGuards();
  }

  // Update logout method - simple!
  Future<void> logout() async {
    try {
      AppDialog.loading(message: 'Logging out...');

      // Reset PIN to dummy
      await PinManager.onLogout();

      // Notify AppLifecycleObserver tentang logout
      AppLifecycleObserver.instance.onUserLogout();

      // Clear user state
      emit(state.copyWith(user: null, profile: null));

      AppDialog.hideLoading();

      // Navigate to login
      router.replaceAll([LoginRoute()]);

      Fluttertoast.showToast(msg: 'Logout berhasil');
    } catch (e) {
      AppDialog.hideLoading();
      print('Logout error: $e');
    }
  }

  // Update login method dengan better navigation handling

  Future<void> login(String email, String password) async {
    AppDialog.loading(message: 'Logging in...');

    final result =
        await _loginUseCase(LoginParam(email: email, password: password));

    result.fold(
      (l) async {
        AppDialog.hideLoading();
        Fluttertoast.showToast(msg: 'Gagal login.');
        InfoModal.showWarning(
          router.navigatorKey.currentContext!,
          title: 'Gagal!',
          message: 'Akun belum diverifikasi',
        );
      },
      (r) async {
        emit(state.copyWith(user: r));

        AppDialog.hideLoading();

        await Future.delayed(const Duration(milliseconds: 100));

        final shouldShowSetup = await PinManager.shouldShowPinSetup();

        WidgetsBinding.instance.addPostFrameCallback((_) {
          try {
            // Check payment status first
            if (r.paymentStatus == false) {
              // Redirect to payment view if payment status is false
              router.replaceAll([PaymentRoute()]);
              return;
            }

            if (shouldShowSetup) {
              _showPinSetupDialog();
            } else {
              _navigateAfterPin();
            }
          } catch (e) {
            print('Navigation error after login: $e');
            Future.delayed(const Duration(milliseconds: 500), () {
              try {
                // Still check payment status in fallback
                if (r.paymentStatus == false) {
                  router.replaceAll([PaymentRoute()]);
                } else {
                  router.replaceAll([DashboardRoute()]);
                }
              } catch (e) {
                print('Fallback navigation also failed: $e');
              }
            });
          }
        });

        Fluttertoast.showToast(
            msg:
                'Login berhasil sebagai ${router.context!.authState.currentRole}');
      },
    );

    // Delay router reevaluation untuk avoid conflict
    Future.delayed(const Duration(milliseconds: 200), () {
      router.reevaluateGuards();
    });
  }

  void _showPinSetupDialog() {
    try {
      final context = router.navigatorKey.currentContext;
      if (context == null) {
        print('No context available for PIN setup');
        _navigateAfterPin(); // Updated method name
        return;
      }

      // Navigate to PIN setup page dengan callback yang proper
      router.push(PinSetupScreenRoute()).then((_) {
        // Setelah kembali dari PIN setup, check payment status
        print('Returned from PIN setup, checking payment status');
        _navigateAfterPin();
      });
    } catch (e) {
      print('Error showing PIN setup: $e');
      _navigateAfterPin(); // Fallback
    }
  }

  void _navigateAfterPin() {
    try {
      final context = router.navigatorKey.currentContext;
      if (context != null) {
        // Check payment status from current user state
        final user = state.user;
        if (user?.paymentStatus == false) {
          print('Payment not completed, navigating to payment...');
          router.replaceAll([PaymentRoute()]);
        } else {
          print('Navigating to dashboard...');
          router.replaceAll([DashboardRoute()]);
        }
      } else {
        // Retry dengan delay
        Future.delayed(const Duration(milliseconds: 300), () {
          if (router.navigatorKey.currentContext != null) {
            final user = state.user;
            if (user?.paymentStatus == false) {
              print('Retry navigating to payment...');
              router.replaceAll([PaymentRoute()]);
            } else {
              print('Retry navigating to dashboard...');
              router.replaceAll([DashboardRoute()]);
            }
          }
        });
      }
    } catch (e) {
      print('Error in navigation after PIN: $e');
      // Last resort fallback
      Future.delayed(const Duration(milliseconds: 500), () {
        router.replaceAll([DashboardRoute()]);
      });
    }
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }

  // Update resetUser method
  Future<void> resetUser() async {
    try {
      if (isLoggedIn) {
        // Reset PIN saat reset user
        await PinManager.onLogout();

        // Notify AppLifecycleObserver
        AppLifecycleObserver.instance.onUserLogout();

        emit(state.copyWith(fcmToken: null, user: null, profile: null));
      }
    } catch (e) {
      print('Error resetting user: $e');
    }
  }
}
