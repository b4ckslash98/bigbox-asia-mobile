import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pinput/pinput.dart';
import '../../core/pin_manager.dart';
import 'widgets/numeric_keypad.dart';

class AuthBottomSheet extends StatefulWidget {
  final VoidCallback? onAuthenticated;
  final VoidCallback? onDismiss;

  const AuthBottomSheet({
    super.key,
    this.onAuthenticated,
    this.onDismiss,
  });

  @override
  State<AuthBottomSheet> createState() => _AuthBottomSheetState();
}

class _AuthBottomSheetState extends State<AuthBottomSheet>
    with TickerProviderStateMixin {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _pinFocusNode = FocusNode();
  final LocalAuthentication _localAuth = LocalAuthentication();

  bool _isLoading = false;
  String _errorMessage = '';
  bool _canUseBiometric = false;
  List<BiometricType> _availableBiometrics = [];

  late AnimationController _shakeController;
  late Animation<double> _shakeAnimation;
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    _checkBiometricSupport();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pinFocusNode.requestFocus();
    });
  }

  void _setupAnimations() {
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _shakeAnimation = Tween<double>(
      begin: 0.0,
      end: 10.0,
    ).animate(CurvedAnimation(
      parent: _shakeController,
      curve: Curves.elasticIn,
    ));

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeInOut,
    ));

    _slideController.forward();
  }

  Future<void> _checkBiometricSupport() async {
    try {
      final bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
      final bool isDeviceSupported = await _localAuth.isDeviceSupported();

      if (canCheckBiometrics && isDeviceSupported) {
        final List<BiometricType> availableBiometrics =
            await _localAuth.getAvailableBiometrics();

        setState(() {
          _canUseBiometric = availableBiometrics.isNotEmpty;
          _availableBiometrics = availableBiometrics;
        });
      }
    } catch (e) {
      setState(() {
        _canUseBiometric = false;
      });
    }
  }

  Future<void> _authenticateWithBiometric() async {
    try {
      setState(() => _isLoading = true);

      final bool didAuthenticate = await _localAuth.authenticate(
        localizedReason: 'Verifikasi identitas untuk melanjutkan',
        options: const AuthenticationOptions(
          biometricOnly: false,
          stickyAuth: true,
          useErrorDialogs: true,
          sensitiveTransaction: true,
        ),
      );

      if (didAuthenticate && mounted) {
        _handleAuthenticationSuccess();
      } else {
        setState(() {
          _errorMessage = 'Autentikasi biometrik dibatalkan';
        });
        _triggerShakeAnimation();
      }
    } on PlatformException catch (e) {
      setState(() {
        _errorMessage = _handleBiometricError(e.code);
      });
      _triggerShakeAnimation();
    } catch (e) {
      setState(() {
        _errorMessage = 'Terjadi kesalahan tidak terduga';
      });
      _triggerShakeAnimation();
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  String _handleBiometricError(String errorCode) {
    switch (errorCode) {
      case 'NotAvailable':
        return 'Biometric tidak tersedia';
      case 'NotEnrolled':
        return 'Biometric belum di-setup';
      case 'LockedOut':
        return 'Terlalu banyak percobaan gagal';
      case 'PermanentlyLockedOut':
        return 'Biometric terkunci permanen';
      case 'UserCancel':
        return 'Dibatalkan oleh user';
      default:
        return 'Autentikasi biometrik gagal';
    }
  }

  void _onPinCompleted(String pin) async {
    if (pin.length == 4) {
      setState(() => _isLoading = true);

      final bool isCorrect = await PinManager.verifyPIN(pin);

      if (isCorrect && mounted) {
        _handleAuthenticationSuccess();
      } else {
        setState(() {
          _errorMessage = 'PIN salah';
          _pinController.clear();
        });
        _triggerShakeAnimation();
      }

      setState(() => _isLoading = false);
    }
  }

  void _triggerShakeAnimation() {
    _shakeController.forward().then((_) {
      _shakeController.reset();
    });
    HapticFeedback.heavyImpact();
  }

  void _handleAuthenticationSuccess() {
    HapticFeedback.lightImpact();
    widget.onAuthenticated?.call();
    Navigator.of(context).pop(true); // Tutup modal setelah sukses
  }

  String _getBiometricButtonText() {
    if (_availableBiometrics.contains(BiometricType.face)) {
      return 'Face ID';
    } else if (_availableBiometrics.contains(BiometricType.fingerprint)) {
      return 'Fingerprint';
    } else if (_availableBiometrics.contains(BiometricType.iris)) {
      return 'Iris';
    } else {
      return 'Biometrik';
    }
  }

  IconData _getBiometricIcon() {
    if (_availableBiometrics.contains(BiometricType.face)) {
      return Icons.face;
    } else if (_availableBiometrics.contains(BiometricType.fingerprint)) {
      return Icons.fingerprint;
    } else if (_availableBiometrics.contains(BiometricType.iris)) {
      return Icons.visibility;
    } else {
      return Icons.security;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              // Handle bar
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 16),
                width: 32,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      // Header
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF6739).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                _canUseBiometric
                                    ? _getBiometricIcon()
                                    : Icons.security,
                                color: const Color(0xffFF6739),
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Verifikasi Identitas',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Masukkan PIN untuk melanjutkan',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // PIN Input dengan animasi shake
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: AnimatedBuilder(
                          animation: _shakeAnimation,
                          builder: (context, child) {
                            return Transform.translate(
                              offset: Offset(_shakeAnimation.value, 0),
                              child: child,
                            );
                          },
                          child: Pinput(
                            controller: _pinController,
                            focusNode: _pinFocusNode,
                            length: 4,
                            obscureText: true,
                            readOnly: true,
                            obscuringCharacter: '●',
                            enabled: !_isLoading,
                            onCompleted: _onPinCompleted,
                            onChanged: (value) {
                              if (_errorMessage.isNotEmpty) {
                                setState(() {
                                  _errorMessage = '';
                                });
                              }
                            },
                            defaultPinTheme: PinTheme(
                              width: 44,
                              height: 52,
                              textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              width: 48,
                              height: 56,
                              textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffFF6739).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xffFF6739),
                                  width: 2,
                                ),
                              ),
                            ),
                            errorPinTheme: PinTheme(
                              width: 48,
                              height: 56,
                              textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.red,
                                  width: 2,
                                ),
                              ),
                            ),
                            submittedPinTheme: PinTheme(
                              width: 48,
                              height: 56,
                              textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffFF6739),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xffFF6739),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Error message
                      if (_errorMessage.isNotEmpty) ...[
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            _errorMessage,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                      const SizedBox(height: 20),
                      // Loading indicator
                      if (_isLoading) ...[
                        const CircularProgressIndicator(
                          color: Color(0xffFF6739),
                          strokeWidth: 2,
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Memverifikasi...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ] else ...[
                        // Helper text
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'Masukkan PIN 4 digit Anda',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Numeric Keypad
                        NumericKeypad(
                          onKeyTap: (key) {
                            if (_pinController.text.length < 4) {
                              _pinController.text += key;
                              if (_pinController.text.length == 4) {
                                _onPinCompleted(_pinController.text);
                              }
                            }
                          },
                          onBackspace: () {
                            if (_pinController.text.isNotEmpty) {
                              _pinController.text =
                                  _pinController.text.substring(
                                0,
                                _pinController.text.length - 1,
                              );
                            }
                          },
                          onBiometric: _canUseBiometric
                              ? _authenticateWithBiometric
                              : null,
                          showBiometric: _canUseBiometric,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              // Cancel button - Compact fixed bottom
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: widget.onDismiss,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    minimumSize: const Size(0, 44),
                  ),
                  child: const Text(
                    'Batal',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _pinController.dispose();
    _pinFocusNode.dispose();
    _shakeController.dispose();
    _slideController.dispose();
    super.dispose();
  }
}
