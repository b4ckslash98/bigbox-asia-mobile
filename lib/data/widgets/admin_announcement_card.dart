import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnnouncementCard extends StatelessWidget {
  final String title;
  final String content;
  final String adminName;
  final DateTime dateTime;
  final int views;
  final String status;
  final List<String> tags;

  const AnnouncementCard({
    super.key,
    required this.title,
    required this.content,
    required this.adminName,
    required this.dateTime,
    required this.views,
    required this.status,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('d MMM yyyy, HH.mm', 'id_ID');

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top: Icon + tags + more
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.campaign, size: 20, color: Colors.amber),
                const SizedBox(width: 6),
                Wrap(
                  spacing: 6,
                  runSpacing: -6,
                  children: tags
                      .map((tag) => Chip(
                            label: Text(tag,
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 6),
                            backgroundColor: tag.toLowerCase() == 'published'
                                ? Colors.green.shade100
                                : Colors.orange.shade100,
                            labelStyle: TextStyle(
                              color: tag.toLowerCase() == 'published'
                                  ? Colors.green.shade800
                                  : Colors.orange.shade800,
                            ),
                            visualDensity:
                                VisualDensity(horizontal: 0.0, vertical: -4),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ))
                      .toList(),
                ),
                const Spacer(),
                const Icon(Icons.more_vert, size: 18, color: Colors.black54),
              ],
            ),
            const SizedBox(height: 8),

            // Title
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),

            // Content preview (max 2 lines)
            Text(
              content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 12),

            // Footer: admin, date, views, live
            Row(
              children: [
                const Icon(Icons.person, size: 14, color: Colors.black45),
                const SizedBox(width: 4),
                Text(adminName,
                    style:
                        const TextStyle(fontSize: 12, color: Colors.black54)),
                const SizedBox(width: 12),
                const Icon(Icons.calendar_today,
                    size: 14, color: Colors.black45),
                const SizedBox(width: 4),
                Text(dateFormat.format(dateTime),
                    style:
                        const TextStyle(fontSize: 12, color: Colors.black54)),
                const SizedBox(width: 12),
                const Icon(Icons.visibility, size: 14, color: Colors.black45),
                const SizedBox(width: 4),
                Text('$views',
                    style:
                        const TextStyle(fontSize: 12, color: Colors.black54)),
                const Spacer(),
                const Icon(Icons.circle, size: 10, color: Colors.green),
                const SizedBox(width: 4),
                const Text("Live",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
