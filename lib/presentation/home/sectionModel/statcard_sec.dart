import 'package:flutter/material.dart';

import '../../../lib.dart';

class StatCard extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  final String badgeText;
  final Color badgeColor;
  final List<Color> backgroundGradient;

  const StatCard({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
    required this.badgeText,
    required this.badgeColor,
    required this.backgroundGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: backgroundGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: badgeColor),
      ),
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          // Badge right top
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: badgeColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                badgeText,
                style: TextStyle(
                  color: badgeColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
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
                borderWidth: 1.2,
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
            ],
          ),
        ],
      ),
    );
  }
}
