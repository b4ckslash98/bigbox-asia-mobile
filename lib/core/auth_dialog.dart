import 'package:flutter/material.dart';
import '../presentation/auth_screen/auth_screen.dart';
import '../router/router.dart';
import 'app_lifecycle_observer.dart';

class AuthDialog {
  static bool _isShowing = false;

  static void show() {
    print('AuthDialog.show called');
    print('_isShowing: $_isShowing');

    if (_isShowing) {
      print('Auth dialog already showing');
      return;
    }

    // Gunakan router context
    final context = router.context;
    if (context == null) {
      print('Router context not available');
      return;
    }

    _isShowing = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => WillPopScope(
        onWillPop: () async => false,
        child: Dialog.fullscreen(
          child: AuthenticationScreen(
            onAuthenticated: () {
              print('Authentication successful - closing dialog');

              // Close dialog
              if (Navigator.canPop(dialogContext)) {
                Navigator.of(dialogContext).pop(true);
              }

              // Notify success
              AppLifecycleObserver.instance.setAuthenticationSuccess();

              _isShowing = false;
            },
          ),
        ),
      ),
    ).then((_) {
      print('Auth dialog closed');
      _isShowing = false;
    }).catchError((error) {
      print('Error showing auth dialog: $error');
      _isShowing = false;
    });
  }

  static void hide() {
    print('AuthDialog.hide called');

    if (!_isShowing) {
      print('Auth dialog not showing');
      return;
    }

    final context = router.context;
    if (context != null && Navigator.canPop(context)) {
      Navigator.of(context).pop();
    }
    _isShowing = false;
  }

  static bool get isShowing => _isShowing;
}
