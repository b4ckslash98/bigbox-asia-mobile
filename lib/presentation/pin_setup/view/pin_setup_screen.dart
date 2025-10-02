import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/pin_manager.dart';
import '../../../router/router.dart'; // Tambahkan import router

@RoutePage()
class PinSetupScreenView extends StatefulWidget {
  final VoidCallback? onCompleted;
  final VoidCallback? onSkipped;

  const PinSetupScreenView({
    super.key,
    this.onCompleted,
    this.onSkipped,
  });

  @override
  State<PinSetupScreenView> createState() => _PinSetupScreenViewState();
}

class _PinSetupScreenViewState extends State<PinSetupScreenView> {
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _confirmPinController = TextEditingController();
  bool _isLoading = false;
  String _errorMessage = '';
  int _currentStep = 0; // 0: set pin, 1: confirm pin

  Future<void> _handleSetPin() async {
    if (_pinController.text.length != 4) {
      setState(() {
        _errorMessage = 'PIN harus 4 digit';
      });
      return;
    }

    setState(() {
      _currentStep = 1;
      _errorMessage = '';
    });
  }

  Future<void> _handleConfirmPin() async {
    if (_confirmPinController.text != _pinController.text) {
      setState(() {
        _errorMessage = 'PIN tidak cocok';
      });
      return;
    }

    setState(() => _isLoading = true);

    try {
      await PinManager.setPIN(_pinController.text);

      if (mounted) {
        _showSuccessDialog();
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Gagal menyimpan PIN';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 40,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'PIN Berhasil Dibuat!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'PIN Anda telah berhasil dibuat dan akan digunakan untuk keamanan aplikasi.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close dialog
                  _navigateToDashboard(); // Navigate to dashboard
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF6739),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Lanjutkan ke Dashboard'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Tambahkan method untuk navigate ke dashboard
  void _navigateToDashboard() {
    try {
      print('PIN setup completed, navigating to dashboard...');

      // Call onCompleted callback jika ada
      widget.onCompleted?.call();

      // Navigate ke dashboard menggunakan router
      context.router.replaceAll([DashboardRoute()]);

      print('Successfully navigated to dashboard');
    } catch (e) {
      print('Error navigating to dashboard from PIN setup: $e');

      // Fallback navigation
      Future.delayed(const Duration(milliseconds: 300), () {
        try {
          context.router.replace(DashboardRoute());
        } catch (e) {
          print('Fallback navigation also failed: $e');
          // Ultimate fallback - use router directly
          router.replaceAll([DashboardRoute()]);
        }
      });
    }
  }

  void _handleSkip() async {
    try {
      await PinManager.setPinEnabled(false);
      await PinManager.markPinSetupCompleted();

      // Call onSkipped callback jika ada
      widget.onSkipped?.call();

      // Navigate ke dashboard
      _navigateToDashboard();
    } catch (e) {
      print('Error in handleSkip: $e');
      // Tetap lanjut ke dashboard meski error
      _navigateToDashboard();
    }
  }

  void _goBack() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep = 0;
        _confirmPinController.clear();
        _errorMessage = '';
      });
    }
  }

  // Update description text
  String get _getDescription {
    return 'Buat PIN 6 digit untuk mengamankan aplikasi Anda.\nPIN akan direset setiap kali logout.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_currentStep > 0)
                      IconButton(
                        onPressed: _goBack,
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      )
                    else
                      const SizedBox(width: 48),
                    const Text(
                      'Keamanan Aplikasi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    // TextButton(
                    //   onPressed: _handleSkip,
                    //   child: const Text(
                    //     'Lewati',
                    //     style: TextStyle(
                    //       color: Colors.white70,
                    //       decoration: TextDecoration.underline,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Security Icon
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

                      // Title & Description
                      Text(
                        _currentStep == 0
                            ? 'Buat PIN Keamanan'
                            : 'Konfirmasi PIN',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Text(
                        _currentStep == 0
                            ? _getDescription
                            : 'Masukkan kembali PIN untuk konfirmasi',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Step Indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildStepIndicator(0, isActive: _currentStep >= 0),
                          Container(
                            width: 40,
                            height: 2,
                            color: _currentStep >= 1
                                ? Colors.white
                                : Colors.white30,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          _buildStepIndicator(1, isActive: _currentStep >= 1),
                        ],
                      ),

                      const SizedBox(height: 40),

                      // PIN Input Card
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
                              controller: _currentStep == 0
                                  ? _pinController
                                  : _confirmPinController,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              maxLength: 6,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 8,
                              ),
                              decoration: InputDecoration(
                                hintText: '• • • • ',
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

                            // Action Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _isLoading
                                    ? null
                                    : (_currentStep == 0
                                        ? _handleSetPin
                                        : _handleConfirmPin),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffFF6739),
                                  foregroundColor: Colors.white,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
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
                                    : Text(
                                        _currentStep == 0
                                            ? 'Lanjutkan'
                                            : 'Konfirmasi PIN',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Security Benefits
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2)),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Informasi PIN:',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 12),
                            _buildBenefitItem('PIN akan direset setiap logout'),
                            _buildBenefitItem(
                                'Harus dibuat ulang setiap login'),
                            _buildBenefitItem(
                                'Keamanan data selama sesi aktif'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator(int step, {required bool isActive}) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white30,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '${step + 1}',
          style: TextStyle(
            color: isActive ? const Color(0xffFF6739) : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Update benefit items
  Widget _buildBenefitItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.white70,
            size: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pinController.dispose();
    _confirmPinController.dispose();
    super.dispose();
  }
}
