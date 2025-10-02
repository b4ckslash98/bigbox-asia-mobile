import 'package:flutter/material.dart';

class ActivityItem {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String timeAgo;
  final Color backgroundColor;

  ActivityItem({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.timeAgo,
    required this.backgroundColor,
  });
}

class RecentActivityWidget extends StatelessWidget {
  final List<ActivityItem> activities = [
    ActivityItem(
      icon: Icons.apartment,
      iconColor: Colors.blue,
      title: "Klien baru mendaftar: Gina",
      timeAgo: "9 hours ago",
      backgroundColor: Color(0xFFEAF6FF),
    ),
    ActivityItem(
      icon: Icons.apartment,
      iconColor: Colors.blue,
      title: "Klien baru mendaftar: test",
      timeAgo: "9 hours ago",
      backgroundColor: Color(0xFFEAF6FF),
    ),
    ActivityItem(
      icon: Icons.star_border,
      iconColor: Colors.amber,
      title: "Sofia Citra melamar job: Test Schedule Integration Job",
      timeAgo: "16 hours ago",
      backgroundColor: Color(0xFFFFF7E0),
    ),
    ActivityItem(
      icon: Icons.shopping_bag_outlined,
      iconColor: Colors.redAccent,
      title: "Job baru diposting: Casting Iklan Bumbu Masak oleh Bang Sugi",
      timeAgo: "3 days ago",
      backgroundColor: Color(0xFFFFEEEE),
    ),
  ];

  RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Aktivitas Terbaru",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "LIHAT SEMUA",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...activities.map((activity) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: activity.backgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Icon(activity.icon,
                            color: activity.iconColor, size: 20),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activity.title,
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.access_time,
                                    size: 12, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  activity.timeAgo,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
