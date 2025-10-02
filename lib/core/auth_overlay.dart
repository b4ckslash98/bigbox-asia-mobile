import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/auth_screen/auth_bottom_sheet.dart';
import '../presentation/auth/cubit/auth_cubit.dart';
import '../router/router.dart';
import '../core/app_lifecycle_observer.dart';

class AuthOverlay {
  static OverlayEntry? _overlayEntry;
  static bool _isShowing = false;

  static void show(BuildContext? context) {
    print('AuthOverlay.show called');
    print('_isShowing: $_isShowing');

    if (_isShowing) {
      print('Auth already showing, returning');
      return;
    }

    // Check user login status sebelum show
    if (!_isUserLoggedIn()) {
      print('User not logged in, not showing auth overlay');
      return;
    }

    final routerContext = router.navigatorKey.currentContext;
    if (routerContext == null) {
      print('Router context not available, retrying...');
      Future.delayed(const Duration(milliseconds: 500), () {
        if (!_isShowing && _isUserLoggedIn()) {
          show(context);
        }
      });
      return;
    }

    try {
      final overlay = Overlay.maybeOf(routerContext);
      if (overlay == null) {
        print('No overlay found in router context');
        return;
      }

      _isShowing = true;

      _overlayEntry = OverlayEntry(
        builder: (overlayContext) {
          return _AuthOverlayWrapper(
            onAuthenticated: () {
              print('Authentication successful via callback');
              hide();
              _notifyAuthenticationSuccess();
            },
            onDismiss: () {
              print('Auth overlay dismissed');
              hide();
            },
          );
        },
      );

      overlay.insert(_overlayEntry!);
      print('Auth overlay inserted successfully');
    } catch (e) {
      print('Error inserting auth overlay: $e');
      _isShowing = false;
      _overlayEntry = null;
    }
  }

  static void hide() {
    print('AuthOverlay.hide called');
    if (_isShowing && _overlayEntry != null) {
      try {
        _overlayEntry!.remove();
        _overlayEntry = null;
        _isShowing = false;
        print('Auth overlay removed successfully');
      } catch (e) {
        print('Error removing auth overlay: $e');
        _overlayEntry = null;
        _isShowing = false;
      }
    }
  }

  static void _notifyAuthenticationSuccess() {
    AppLifecycleObserver.instance.setAuthenticationSuccess();
  }

  static bool _isUserLoggedIn() {
    try {
      final context = router.navigatorKey.currentContext;
      if (context == null) return false;

      final authCubit = context.read<AuthCubit>();
      return authCubit.state.isAuthenticated;
    } catch (e) {
      print('Error checking login status: $e');
      return false;
    }
  }

  static bool get isShowing => _isShowing;
}

// Wrapper widget untuk mengisolasi bottom sheet dari navigation scope
class _AuthOverlayWrapper extends StatefulWidget {
  final VoidCallback onAuthenticated;
  final VoidCallback onDismiss;

  const _AuthOverlayWrapper({
    required this.onAuthenticated,
    required this.onDismiss,
  });

  @override
  State<_AuthOverlayWrapper> createState() => _AuthOverlayWrapperState();
}

class _AuthOverlayWrapperState extends State<_AuthOverlayWrapper>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    _animationController.forward();
  }

  void _setupAnimations() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));
  }

  Future<void> _dismiss() async {
    await _animationController.reverse();
    widget.onDismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(
            children: [
              // Background overlay
              GestureDetector(
                onTap: _dismiss,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.7 * _fadeAnimation.value),
                ),
              ),

              // Bottom sheet content
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: _AuthBottomSheetContent(
                      onAuthenticated: widget.onAuthenticated,
                      onDismiss: _dismiss,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

// Content widget yang terisolasi dari navigation
class _AuthBottomSheetContent extends StatelessWidget {
  final VoidCallback onAuthenticated;
  final VoidCallback onDismiss;

  const _AuthBottomSheetContent({
    required this.onAuthenticated,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: AuthBottomSheet(
        onAuthenticated: onAuthenticated,
        onDismiss: onDismiss,
      ),
    );
  }
}
