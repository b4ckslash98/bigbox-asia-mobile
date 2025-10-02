import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumericKeypad extends StatelessWidget {
  final Function(String) onKeyTap;
  final VoidCallback onBackspace;
  final VoidCallback? onBiometric;
  final bool showBiometric;

  const NumericKeypad({
    super.key,
    required this.onKeyTap,
    required this.onBackspace,
    this.onBiometric,
    this.showBiometric = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          // Row 1: 1, 2, 3
          _buildKeyRow(['1', '2', '3']),
          const SizedBox(height: 16),

          // Row 2: 4, 5, 6
          _buildKeyRow(['4', '5', '6']),
          const SizedBox(height: 16),

          // Row 3: 7, 8, 9
          _buildKeyRow(['7', '8', '9']),
          const SizedBox(height: 16),

          // Row 4: biometric/empty, 0, backspace
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Biometric or empty
              if (showBiometric && onBiometric != null)
                _buildActionKey(
                  icon: Icons.fingerprint,
                  onTap: onBiometric!,
                )
              else
                const SizedBox(width: 72, height: 72),

              // Zero
              _buildNumberKey('0'),

              // Backspace
              _buildActionKey(
                icon: Icons.backspace_outlined,
                onTap: onBackspace,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildKeyRow(List<String> numbers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: numbers.map((number) => _buildNumberKey(number)).toList(),
    );
  }

  Widget _buildNumberKey(String number) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          HapticFeedback.lightImpact();
          onKeyTap(number);
        },
        borderRadius: BorderRadius.circular(36),
        child: Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade100,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionKey({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          HapticFeedback.lightImpact();
          onTap();
        },
        borderRadius: BorderRadius.circular(36),
        child: Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade100,
          ),
          child: Center(
            child: Icon(
              icon,
              size: 24,
              color: const Color(0xffFF6739),
            ),
          ),
        ),
      ),
    );
  }
}

// Tambahkan di AuthBottomSheet jika ingin pakai numeric keypad
// Di bagian bottom, ganti dengan:

// Numeric Keypad (optional)
// NumericKeypad(
//   onKeyTap: (key) {
//     if (_pinController.text.length < 6) {
//       _pinController.text += key;
//       if (_pinController.text.length == 6) {
//         _onPinCompleted(_pinController.text);
//       }
//     }
//   },
//   onBackspace: () {
//     if (_pinController.text.isNotEmpty) {
//       _pinController.text = _pinController.text.substring(
//         0, 
//         _pinController.text.length - 1
//       );
//     }
//   },
//   onBiometric: _canUseBiometric ? _authenticateWithBiometric : null,
//   showBiometric: _canUseBiometric,
// ),
