import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

enum ModalType { success, warning }

class InfoModal extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback? onPressed;
  final ModalType type;

  const InfoModal({
    Key? key,
    required this.title,
    required this.message,
    this.buttonText = 'Tutup',
    this.onPressed,
    this.type = ModalType.success,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSuccess = type == ModalType.success;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSuccess ? Icons.verified_user : Icons.warning,
            color: isSuccess ? Colors.green : Colors.orange,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed ??
                  () {
                    context.router.maybePop();
                    context.router.maybePop();
                  },
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }

  static void showSuccess(
    BuildContext context, {
    required String title,
    required String message,
    String buttonText = 'Tutup',
    VoidCallback? onPressed,
    bool isDismissible = false,
    bool enableDrag = false,
  }) {
    showModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (context) => InfoModal(
        title: title,
        message: message,
        buttonText: buttonText,
        onPressed: onPressed,
        type: ModalType.success,
      ),
    );
  }

  static void showWarning(
    BuildContext context, {
    required String title,
    required String message,
    String buttonText = 'Tutup',
    VoidCallback? onPressed,
    bool isDismissible = false,
    bool enableDrag = false,
  }) {
    showModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (context) => InfoModal(
        title: title,
        message: message,
        buttonText: buttonText,
        onPressed: onPressed,
        type: ModalType.warning,
      ),
    );
  }
}
