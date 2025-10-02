import 'package:auto_route/auto_route.dart';
import 'package:bigbox_asia/lib.dart';
import 'package:bigbox_asia/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitialView extends StatefulWidget {
  const InitialView({super.key});

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  @override
  void initState() {
    super.initState();
    _handleInitialNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo_text_transparent.png',
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            debugPrint('Error loading image: $error');
            return const Text('Image not found');
          },
        ),
      ),
    );
  }

  void _handleInitialNavigation() async {
    await Future.delayed(const Duration(seconds: 2));
    if (context.authState.isAuthenticated) {
      context.router.replace(const DashboardRoute());
    } else {
      context.router.replace(const LoginRoute());
    }
  }
}
