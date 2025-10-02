import 'package:shared_preferences/shared_preferences.dart';

class PinManager {
  static const String _pinKey = 'user_pin';
  static const String _pinEnabledKey = 'pin_enabled';
  static const String _pinSetupCompletedKey = 'pin_setup_completed';
  static const String _defaultPIN = '123456';

  // Initialize dummy PIN (dipanggil di main.dart)
  static Future<void> initializeDummyPIN() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Selalu set dummy PIN saat init
      await prefs.setString(_pinKey, _defaultPIN);
      await prefs.setBool(_pinSetupCompletedKey, false);
      await prefs.setBool(_pinEnabledKey, true);

      print('Dummy PIN initialized: $_defaultPIN');
    } catch (e) {
      print('Error initializing dummy PIN: $e');
    }
  }

  // Check if user has completed PIN setup (bukan dummy)
  static Future<bool> isPinSetupCompleted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_pinSetupCompletedKey) ?? false;
    } catch (e) {
      print('Error checking PIN setup status: $e');
      return false;
    }
  }

  // Check if PIN is enabled
  static Future<bool> isPinEnabled() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_pinEnabledKey) ?? true;
    } catch (e) {
      print('Error checking PIN enabled status: $e');
      return true;
    }
  }

  // Set PIN enabled status
  static Future<void> setPinEnabled(bool enabled) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_pinEnabledKey, enabled);
      print('PIN enabled set to: $enabled');
    } catch (e) {
      print('Error setting PIN enabled: $e');
    }
  }

  // Mark PIN setup as completed - TAMBAHKAN METHOD INI
  static Future<void> markPinSetupCompleted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_pinSetupCompletedKey, true);
      print('PIN setup marked as completed');
    } catch (e) {
      print('Error marking PIN setup completed: $e');
    }
  }

  // Set PIN (untuk user setup PIN baru)
  static Future<void> setPIN(String pin) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_pinKey, pin);
      await prefs.setBool(_pinSetupCompletedKey, true);
      await prefs.setBool(_pinEnabledKey, true);
      print('PIN updated to: $pin');
    } catch (e) {
      print('Error setting PIN: $e');
    }
  }

  // Verify PIN
  static Future<bool> verifyPIN(String pin) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedPIN = prefs.getString(_pinKey) ?? _defaultPIN;
      print('Verifying PIN: $pin against saved: $savedPIN');
      return savedPIN == pin;
    } catch (e) {
      print('Error verifying PIN: $e');
      return pin == _defaultPIN;
    }
  }

  // Get current PIN (untuk debug)
  static Future<String?> getCurrentPIN() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_pinKey);
    } catch (e) {
      print('Error getting current PIN: $e');
      return null;
    }
  }

  // Check apakah user perlu setup PIN (setelah login)
  static Future<bool> shouldShowPinSetup() async {
    try {
      final isSetupCompleted = await isPinSetupCompleted();
      return !isSetupCompleted; // Show setup jika belum completed
    } catch (e) {
      print('Error checking should show PIN setup: $e');
      return true; // Default show setup jika error
    }
  }

  // LOGOUT - Reset PIN kembali ke dummy
  static Future<void> onLogout() async {
    try {
      await initializeDummyPIN(); // Reset ke dummy PIN
      print('PIN reset to dummy on logout');
    } catch (e) {
      print('Error resetting PIN on logout: $e');
    }
  }

  // Reset untuk testing
  static Future<void> resetForTesting() async {
    await initializeDummyPIN();
  }
}
