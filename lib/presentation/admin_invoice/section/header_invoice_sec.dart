import 'package:flutter/material.dart';

class HeaderInvoiceView extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback? onGenerateInvoice;

  const HeaderInvoiceView({
    super.key,
    this.onBack,
    this.onGenerateInvoice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFEC2323), Color(0xFFFF6B00)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button di pojok kiri atas
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: onBack ?? () => Navigator.of(context).pop(),
                ),
              ),

              const SizedBox(height: 8),

              // Title & Subtitle dan Generate button
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title & Subtitle
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Invoice Management",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Kelola tagihan dan invoice client dengan mudah",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Generate Invoice Button
                  ElevatedButton.icon(
                    onPressed: onGenerateInvoice ?? () {},
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text("Generate Invoice"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.orange,
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 3,
                      shadowColor: Colors.black38,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
