import 'package:flutter/material.dart';

import '../../../lib.dart';

class ModelHomeContent extends StatelessWidget {
  const ModelHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderUser(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.3,
                  children: const [
                    StatCard(
                      value: '15',
                      label: 'Total Projects',
                      icon: Icons.camera_alt_outlined,
                      badgeText: '+3 baru',
                      badgeColor: Colors.green,
                      backgroundGradient: [
                        Color(0xFFE9FFF5),
                        Color(0xFFF5FFFA)
                      ],
                    ),
                    StatCard(
                      value: '7',
                      label: 'Booking Baru',
                      icon: Icons.event_note,
                      badgeText: 'Menunggu',
                      badgeColor: Colors.orange,
                      backgroundGradient: [
                        Color(0xFFFFF8EB),
                        Color(0xFFFFFBF2)
                      ],
                    ),
                    StatCard(
                      value: 'Rp 5.2M',
                      label: 'Penghasilan',
                      icon: Icons.trending_up,
                      badgeText: '+18%',
                      badgeColor: Colors.green,
                      backgroundGradient: [
                        Color(0xFFE9FFF5),
                        Color(0xFFF5FFFA)
                      ],
                    ),
                    StatCard(
                      value: '4.9',
                      label: 'Rating',
                      icon: Icons.star_outline,
                      badgeText: 'Excellent',
                      badgeColor: Colors.blue,
                      backgroundGradient: [
                        Color(0xFFE6F6FF),
                        Color(0xFFF2FAFF)
                      ],
                    ),
                  ],
                ),
                QuickActions(),
                JobAvailableSection(),
                AnnouncementSection(),
                ArticleVideoSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
