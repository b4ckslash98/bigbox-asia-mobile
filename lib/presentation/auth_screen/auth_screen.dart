import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import '../../core/app_lifecycle_observer.dart';
import '../../core/pin_manager.dart';

class AuthenticationScreen extends StatefulWidget {
  final VoidCallback? onAuthenticated;

  const AuthenticationScreen({
    super.key,
    this.onAuthenticated,
  });

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final TextEditingController _pinController = TextEditingController();
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _isLoading = false;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _tryBiometricAuthentication();
  }

  Future<void> _tryBiometricAuthentication() async {
    try {
      final bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
      final bool isDeviceSupported = await _localAuth.isDeviceSupported();

      if (canCheckBiometrics && isDeviceSupported) {
        final List<BiometricType> availableBiometrics =
            await _localAuth.getAvailableBiometrics();

        if (availableBiometrics.isNotEmpty) {
          await _authenticateWithBiometric();
        }
      }
    } catch (e) {
      print('Biometric check error: $e');
    }
  }

  Future<void> _authenticateWithBiometric() async {
    try {
      setState(() => _isLoading = true);

      final bool didAuthenticate = await _localAuth.authenticate(
        localizedReason: 'Silakan verifikasi identitas Anda untuk melanjutkan',
        options: const AuthenticationOptions(
          biometricOnly: false,
          stickyAuth: true,
        ),
      );

      if (didAuthenticate && mounted) {
        _handleAuthenticationSuccess();
      }
    } on PlatformException catch (e) {
      setState(() {
        _errorMessage = 'Autentikasi biometrik gagal: ${e.message}';
      });
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _authenticateWithPIN() async {
    if (_pinController.text.length != 4) {
      setState(() {
        _errorMessage = 'PIN harus 4 digit';
      });
      return;
    }

    setState(() => _isLoading = true);

    final bool isCorrect = await PinManager.verifyPIN(_pinController.text);

    if (isCorrect && mounted) {
      _handleAuthenticationSuccess();
    } else {
      setState(() {
        _errorMessage = 'PIN salah';
        _pinController.clear();
      });
    }

    setState(() => _isLoading = false);
  }

  void _handleAuthenticationSuccess() {
    print('Authentication successful');

    // Panggil callback untuk close dialog/overlay
    widget.onAuthenticated?.call();

    // Tidak perlu Navigator.pop() karena sudah di-handle di AuthDialog
  }

  // Update _buildTestSection untuk reflect reset behavior
  Widget _buildTestSection() {
    // Hanya tampil di debug mode
    bool inDebugMode = false;
    assert(inDebugMode = true);

    if (!inDebugMode) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        const Divider(color: Colors.white30),
        const SizedBox(height: 16),
        Text(
          'Debug Mode - Default PIN: 1234\n(PIN akan reset setiap logout)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            TextButton(
              onPressed: () async {
                await PinManager.setPIN('1234');
                setState(() {
                  _errorMessage = 'PIN set to: 1234';
                });
              },
              child: Text(
                'Set PIN: 1234',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
            ),
            TextButton(
              onPressed: () async {
                await PinManager.resetForTesting();
                setState(() {
                  _errorMessage = 'PIN reset to dummy';
                });
              },
              child: Text(
                'Reset PIN',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Material(
        child: Scaffold(
          backgroundColor: const Color(0xffFF6739),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xffFF6739),
                  const Color(0xffFF6739).withOpacity(0.8),
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo/Icon
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.security,
                        size: 60,
                        color: Color(0xffFF6739),
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Title
                    const Text(
                      'Verifikasi Identitas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Masukkan PIN atau gunakan biometrik untuk melanjutkan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 40),

                    // PIN Input
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: _pinController,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            maxLength: 4,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 8,
                            ),
                            decoration: InputDecoration(
                              hintText: '• • • •',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                letterSpacing: 8,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              counterText: '',
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),

                          if (_errorMessage.isNotEmpty) ...[
                            const SizedBox(height: 16),
                            Text(
                              _errorMessage,
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                              ),
                            ),
                          ],

                          const SizedBox(height: 24),

                          // Buttons
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed:
                                      _isLoading ? null : _authenticateWithPIN,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffFF6739),
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: _isLoading
                                      ? const SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Colors.white),
                                          ),
                                        )
                                      : const Text(
                                          'Verifikasi PIN',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          // Biometric Button
                          TextButton.icon(
                            onPressed:
                                _isLoading ? null : _authenticateWithBiometric,
                            icon: const Icon(Icons.fingerprint),
                            label: const Text('Gunakan Biometrik'),
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xffFF6739),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Test Section
                    _buildTestSection(),

                    const SizedBox(height: 20),

                    // Exit Button
                    TextButton(
                      onPressed: () => SystemNavigator.pop(),
                      child: const Text(
                        'Keluar Aplikasi',
                        style: TextStyle(
                          color: Colors.white70,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }
}
