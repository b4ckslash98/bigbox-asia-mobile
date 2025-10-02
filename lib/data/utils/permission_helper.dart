import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class AppPermissionHelper {
  /// Meminta izin untuk akses storage/media tergantung versi Android
  static Future<bool> requestStoragePermission() async {
    if (!Platform.isAndroid) return true;

    final sdkInt = await _getAndroidSdkInt();

    if (sdkInt >= 33) {
      // Android 13+
      final photos = await Permission.photos.request();
      return photos.isGranted;
    } else {
      // Android 12 ke bawah
      final storage = await Permission.storage.request();
      return storage.isGranted;
    }
  }

  /// Request permission kamera
  static Future<bool> requestCameraPermission() async {
    final camera = await Permission.camera.request();
    return camera.isGranted;
  }

  static Future<void> openAppSettingsIfDenied(Permission permission) async {
    if (await permission.isPermanentlyDenied) {
      await openAppSettings();
    }
  }

  static Future<int> _getAndroidSdkInt() async {
    try {
      final version = Platform.version.split(' ').first;
      return int.tryParse(version) ?? 0;
    } catch (_) {
      return 0;
    }
  }
}
