import 'package:flutter/services.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  final String? prefix;
  final bool showDecimals;

  CurrencyInputFormatter({this.prefix, this.showDecimals = false});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;

    // Hapus semua karakter kecuali angka
    String digits = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.isEmpty) return const TextEditingValue();

    // Format ke ribuan dengan koma sebagai pemisah ribuan
    String formatted = _formatCurrency(digits);

    // Tambahkan prefix jika ada
    if (prefix != null && prefix!.isNotEmpty) {
      formatted = '$prefix $formatted';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }

  String _formatCurrency(String digits) {
    int value = int.parse(digits);

    // Format dengan koma sebagai pemisah ribuan (sesuai format rupiah Indonesia)
    String formatted = value.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match match) => '${match[1]},',
        );

    // Tambahkan desimal jika diperlukan
    if (showDecimals) {
      formatted = '$formatted.00';
    }

    return formatted;
  }

  // Method helper untuk mendapatkan nilai integer dari text yang sudah diformat
  static int getIntValue(String formattedText) {
    String digits = formattedText.replaceAll(RegExp(r'[^0-9]'), '');
    return int.tryParse(digits) ?? 0;
  }

  // Method helper untuk format display currency
  static String formatDisplay(int value, {bool showDecimals = false}) {
    String formatted = value.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match match) => '${match[1]},',
        );

    if (showDecimals) {
      formatted = '$formatted.00';
    }

    return 'Rp $formatted';
  }
}
