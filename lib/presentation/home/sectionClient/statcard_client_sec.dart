import 'package:flutter/material.dart';

import '../../../lib.dart';

class StatcardClient extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  final String badgeText;
  final Color badgeColor;
  final List<Color> backgroundGradient;
  final bool isGrowth;
  String? subvalue;

  StatcardClient({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
    required this.badgeText,
    required this.badgeColor,
    required this.isGrowth,
    required this.backgroundGradient,
    this.subvalue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            // Badge right top
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: isGrowth
                      ? Colors.green.withOpacity(0.1)
                      : Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Icon(
                      isGrowth
                          ? Icons.trending_up_outlined
                          : Icons.trending_down_outlined,
                      color: isGrowth ? Colors.green : Colors.red,
                    ),
                    Text(
                      badgeText,
                      style: TextStyle(
                        color: isGrowth ? Colors.green : Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlassContainer(
                  color: badgeColor,
                  borderRadius: 8,
                  opacity: 0.28,
                  blurX: 10,
                  blurY: 10,
                  borderWidth: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      icon,
                      color: badgeColor,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 12,
                  ),
                ),
                if (subvalue != null && subvalue!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0), // Only apply padding if subvalue exists
                    child: Text(
                      subvalue!,
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 10,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
