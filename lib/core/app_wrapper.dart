import 'package:flutter/material.dart';
import 'auth_overlay.dart';

class AppWrapper extends StatefulWidget {
  final Widget child;

  const AppWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  void initState() {
    super.initState();

    // Setup lifecycle callbacks setelah widget ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setupLifecycleCallbacks();
    });
  }

  void _setupLifecycleCallbacks() {
    try {
      // Import AppLifecycleObserver
      // AppLifecycleObserver.instance.onShowAuthScreen = () {
      //   if (mounted) {
      //     AuthOverlay.show(context);
      //   }
      // };

      // AppLifecycleObserver.instance.onHideAuthScreen = () {
      //   AuthOverlay.hide();
      // };

      print('Lifecycle callbacks setup in AppWrapper');
    } catch (e) {
      print('Error setting up lifecycle callbacks: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    // Cleanup auth overlay jika masih aktif
    if (AuthOverlay.isShowing) {
      AuthOverlay.hide();
    }
    super.dispose();
  }
}
