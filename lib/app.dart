import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easy_dialogs/flutter_easy_dialogs.dart';

import 'core/app_lifecycle_observer.dart';
import 'core/auth_dialog.dart'; // Ganti dari auth_overlay
import 'lib.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    // Setup callback untuk menampilkan/menyembunyikan auth screen
    AppLifecycleObserver.instance.onShowAuthScreen = () {
      print('onShowAuthScreen callback triggered');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          print('Showing AuthDialog');
          AuthDialog
              .show(); // Tidak perlu context karena menggunakan router.context
        }
      });
    };

    AppLifecycleObserver.instance.onHideAuthScreen = () {
      print('onHideAuthScreen callback triggered');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        print('Hiding AuthDialog');
        AuthDialog.hide();
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => di<AuthCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Base Project',
        routerConfig: router.config(
          navigatorObservers: () => [
            AutoRouteObserver(),
            RouteLoggingObserver(),
          ],
        ),
        theme: primaryTheme,
        builder: (context, child) {
          return FlutterEasyDialogs.builder()(context, child!);
        },
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(AppLifecycleObserver.instance);
    AppLifecycleObserver.instance.dispose();
    super.dispose();
  }
}
