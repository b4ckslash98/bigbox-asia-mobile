import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/auth/cubit/auth_cubit.dart';
import '../router/router.dart';
import '../core/pin_manager.dart';

class AppLifecycleObserver extends WidgetsBindingObserver {
  static AppLifecycleObserver? _instance;
  static AppLifecycleObserver get instance =>
      _instance ??= AppLifecycleObserver._();

  AppLifecycleObserver._();

  final LocalAuthentication _localAuth = LocalAuthentication();
  DateTime? _pausedTime;
  bool _isAuthenticationInProgress = false;
  bool _isAuthenticated = false;

  // Callback untuk menampilkan auth screen
  VoidCallback? onShowAuthScreen;
  VoidCallback? onHideAuthScreen;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        _handleAppResumed();
        break;
      case AppLifecycleState.paused:
        _handleAppPaused();
        break;
      case AppLifecycleState.inactive:
        _handleAppInactive();
        break;
      case AppLifecycleState.detached:
        _handleAppDetached();
        break;
      case AppLifecycleState.hidden:
        _handleAppHidden();
        break;
    }
  }

  void _handleAppResumed() {
    print('App resumed');
    print('_pausedTime: $_pausedTime');
    print('_isAuthenticated: $_isAuthenticated');
    print('_isAuthenticationInProgress: $_isAuthenticationInProgress');

    // Check jika user masih login
    if (!_isUserLoggedIn()) {
      print('User not logged in, skipping PIN authentication');
      return;
    }

    if (_pausedTime != null && !_isAuthenticated) {
      final timeDifference = DateTime.now().difference(_pausedTime!);
      print(
          'Time difference: ${timeDifference.inMinutes} minutes (${timeDifference.inSeconds} seconds)');

      // Jika aplikasi di-pause lebih dari 5 menit, minta autentikasi
      if (timeDifference.inMinutes >= 5) {
        print(
            'Requesting authentication... (${timeDifference.inMinutes} minutes passed)');
        _requestAuthentication();
      } else {
        print(
            'Time difference too small (${timeDifference.inMinutes} minutes), no auth needed');
      }
    } else {
      print(
          'No auth needed - pausedTime: $_pausedTime, isAuthenticated: $_isAuthenticated');
    }
    _pausedTime = null;
  }

  void _handleAppPaused() {
    print('App paused');

    // Hanya set paused time jika user sedang login
    if (_isUserLoggedIn()) {
      _pausedTime = DateTime.now();
      _isAuthenticated = false;
      print('Authentication state reset to false');
    } else {
      print('User not logged in, not setting pause time');
    }
  }

  void _handleAppInactive() {
    print('App inactive');

    // Hanya show privacy screen jika user login
    // if (_isUserLoggedIn()) {
    //   _showPrivacyScreen();
    // }
  }

  void _handleAppDetached() {
    print('App detached');
    _isAuthenticated = false;
  }

  void _handleAppHidden() {
    print('App hidden');

    // Hanya handle jika user login
    if (_isUserLoggedIn()) {
      _pausedTime = DateTime.now();
      _isAuthenticated = false;
      // _showPrivacyScreen();
    }
  }

  // Method untuk check apakah user sedang login
  bool _isUserLoggedIn() {
    try {
      final context = router.navigatorKey.currentContext;
      if (context == null) return false;

      // Check dari AuthCubit
      final authCubit = context.read<AuthCubit>();
      final isLoggedIn = authCubit.state.isAuthenticated;

      print('User logged in status: $isLoggedIn');
      return isLoggedIn;
    } catch (e) {
      print('Error checking login status: $e');
      return false;
    }
  }

  Future<void> _requestAuthentication() async {
    print('_requestAuthentication called');
    print('_isAuthenticationInProgress: $_isAuthenticationInProgress');

    if (_isAuthenticationInProgress) {
      print('Authentication already in progress');
      return;
    }

    // Double check user masih login
    if (!_isUserLoggedIn()) {
      print('User not logged in during authentication request, aborting');
      return;
    }

    // Check if PIN is enabled
    final isPinEnabled = await PinManager.isPinEnabled();
    if (!isPinEnabled) {
      print('PIN authentication is disabled');
      _isAuthenticated = true;
      return;
    }

    _isAuthenticationInProgress = true;
    print('Calling onShowAuthScreen callback');
    onShowAuthScreen?.call();
  }

  void _showPrivacyScreen() {
    // Hanya show privacy screen jika user login dan authentication belum in progress
    if (_isUserLoggedIn() && !_isAuthenticationInProgress) {
      onShowAuthScreen?.call();
    }
  }

  // Method yang dipanggil ketika authentication berhasil
  void setAuthenticationSuccess() {
    print('Authentication success notified');
    _isAuthenticated = true;
    _isAuthenticationInProgress = false;

    // Call hide callback
    onHideAuthScreen?.call();
  }

  // Method yang dipanggil ketika authentication gagal
  void setAuthenticationFailure() {
    print('Authentication failure notified');
    _isAuthenticated = false;
    _isAuthenticationInProgress = false;

    // Handle failure (exit app, etc.)
    _handleAuthenticationFailure();
  }

  Future<void> _handleAuthenticationFailure() async {
    // Handle ketika autentikasi gagal
    SystemNavigator.pop(); // Tutup aplikasi
  }

  // Method yang dipanggil saat user logout - TAMBAHKAN INI
  void onUserLogout() {
    print('User logout detected in AppLifecycleObserver');
    _isAuthenticated = false;
    _isAuthenticationInProgress = false;
    _pausedTime = null;

    // Hide any active auth screen
    onHideAuthScreen?.call();

    print('AppLifecycleObserver state reset on logout');
  }

  Future<bool> _isAuthenticationEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('auth_enabled') ?? true;
  }

  // Method untuk set PIN
  Future<void> setPIN(String pin) async {
    await PinManager.setPIN(pin);
  }

  // Method untuk verify PIN
  Future<bool> verifyPIN(String pin) async {
    return await PinManager.verifyPIN(pin);
  }

  // Method untuk force authentication
  Future<void> forceAuthentication() async {
    print('Force authentication requested');

    if (!_isUserLoggedIn()) {
      print('Cannot force authentication: user not logged in');
      return;
    }

    _isAuthenticated = false;
    await _requestAuthentication();
  }

  // Method untuk enable/disable authentication
  Future<void> setAuthenticationEnabled(bool enabled) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('auth_enabled', enabled);
      print('Authentication enabled set to: $enabled');
    } catch (e) {
      print('Error setting authentication enabled: $e');
    }
  }

  // Getter untuk check authentication state
  bool get isAuthenticated => _isAuthenticated;

  // Cleanup
  void dispose() {
    _pausedTime = null;
    _isAuthenticated = false;
    _isAuthenticationInProgress = false;
  }
}
