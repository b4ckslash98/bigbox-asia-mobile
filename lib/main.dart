import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'lib.dart';
import 'core/app_lifecycle_observer.dart';
import 'core/pin_manager.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeDateFormatting('id_ID', null);
    final appSupportDir = await getApplicationSupportDirectory();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: appSupportDir,
    );
    await setupInjection();
    await di.allReady();

    // Initialize lifecycle observer
    WidgetsBinding.instance.addObserver(AppLifecycleObserver.instance);

    final isPinSetupCompleted = await PinManager.isPinSetupCompleted();
    if (!isPinSetupCompleted) {
      await PinManager.initializeDummyPIN();
    }

    runApp(App());
  } catch (e, stack) {
    print('Fatal error during initialization: $e');
    print('Stack trace: $stack');
  }
}
