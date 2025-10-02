import 'package:flutter/material.dart';

class TaskItem {
  final String title;
  final String timeAgo;
  final Color statusColor;

  TaskItem({
    required this.title,
    required this.timeAgo,
    required this.statusColor,
  });
}

class TaskPendingWidget extends StatelessWidget {
  final List<TaskItem> tasks = [
    TaskItem(
      title: 'Review talent verification: Maya Sari',
      timeAgo: '5 menit',
      statusColor: Colors.redAccent,
    ),
    TaskItem(
      title: 'Approve job posting: Fashion Week',
      timeAgo: '10 menit',
      statusColor: Colors.amber,
    ),
    TaskItem(
      title: 'Verifikasi akun klien: PT Indah Jaya',
      timeAgo: '20 menit',
      statusColor: Colors.amber,
    ),
    TaskItem(
      title: 'Review portfolio: Dimas Ahmad',
      timeAgo: '30 menit',
      statusColor: Colors.redAccent,
    ),
  ];

  TaskPendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.amber),
                    SizedBox(width: 8),
                    Text(
                      'Task Pending (4)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'LIHAT SEMUA',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Task list
            ...tasks.map((task) => Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade100,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: task.statusColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              task.title,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              task.timeAgo,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Colors.grey),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
