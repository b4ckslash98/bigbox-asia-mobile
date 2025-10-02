import 'package:flutter/material.dart';

class StatCardClientAnalytic extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  final Color iconColor;
  final String subvalue;

  const StatCardClientAnalytic({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.subvalue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon
            Icon(
              icon,
              color: iconColor,
              size: 20,
            ),
            const SizedBox(height: 8),
            // Nilai utama (e.g., 0%)
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Label utama
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            // Subvalue (e.g., +0% dari periode sebelumnya)
            Text(
              subvalue,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
