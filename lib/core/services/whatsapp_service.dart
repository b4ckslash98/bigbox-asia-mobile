import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class WhatsAppService {
  static const String _phoneNumber = '085179855642';

  /// Open WhatsApp chat with predefined phone number
  /// [message] - Optional initial message
  static Future<bool> openChat({String? message}) async {
    try {
      // Format phone number (remove leading 0, add country code)
      String formattedNumber = _phoneNumber;
      if (formattedNumber.startsWith('08')) {
        formattedNumber = '62${formattedNumber.substring(1)}';
      }

      // Encode message if provided
      String encodedMessage = '';
      if (message != null && message.isNotEmpty) {
        encodedMessage = Uri.encodeComponent(message);
      }

      // Try WhatsApp app URL first
      final whatsappUrl =
          'whatsapp://send?phone=$formattedNumber${encodedMessage.isNotEmpty ? '&text=$encodedMessage' : ''}';

      if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
        return await launchUrl(
          Uri.parse(whatsappUrl),
          mode: LaunchMode.externalApplication,
        );
      } else {
        // Fallback to WhatsApp Web
        final webUrl =
            'https://wa.me/$formattedNumber${encodedMessage.isNotEmpty ? '?text=$encodedMessage' : ''}';
        return await launchUrl(
          Uri.parse(webUrl),
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      print('Error opening WhatsApp: $e');
      return false;
    }
  }

  /// Open WhatsApp for talent registration
  static Future<bool> openTalentRegistration() async {
    const message = '''Halo BigBox! 👋

Saya ingin mendaftar sebagai Talent.

Nama:
E-mail:
Usia:
Domisili:
Kode Referral:


Pengalaman/experience di dunia entertainment (selama 2024 & 2025):
-
-

Mohon bantuan untuk proses pendaftarannya.

Terima kasih! 😊''';

    return await openChat(message: message);
  }

  /// Show dialog if WhatsApp is not installed
  static void showWhatsAppNotInstalledDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('WhatsApp Tidak Ditemukan'),
          content: const Text(
            'WhatsApp tidak terinstall di device Anda.\n\n'
            'Silakan install WhatsApp terlebih dahulu atau hubungi kami melalui:\n\n'
            '📱 085179855642',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                // Direct to WhatsApp download
                const playStoreUrl =
                    'https://play.google.com/store/apps/details?id=com.whatsapp';
                const appStoreUrl =
                    'https://apps.apple.com/app/whatsapp-messenger/id310633997';

                try {
                  if (Theme.of(context).platform == TargetPlatform.android) {
                    await launchUrl(Uri.parse(playStoreUrl));
                  } else {
                    await launchUrl(Uri.parse(appStoreUrl));
                  }
                } catch (e) {
                  print('Error opening app store: $e');
                }
              },
              child: const Text('Download WhatsApp'),
            ),
          ],
        );
      },
    );
  }
}
