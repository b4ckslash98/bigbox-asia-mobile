import 'package:flutter/material.dart';

class JobCardWidget extends StatelessWidget {
  final String title;
  final String client;
  final String location;
  final String postedDate;
  final String deadlineDate;
  final String price;
  final String level;
  final int applicants;
  final int views;
  final double rating;
  final VoidCallback? onApply;
  final VoidCallback? onDetail;

  const JobCardWidget({
    super.key,
    required this.title,
    required this.client,
    required this.location,
    required this.postedDate,
    required this.deadlineDate,
    required this.price,
    required this.level,
    required this.applicants,
    required this.views,
    required this.rating,
    this.onApply,
    this.onDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top: Label & Favorite
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    'iklan',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Icon(Icons.favorite_border, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 12),

            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),
            // Client name
            Text(
              client,
              style: TextStyle(color: Colors.grey.shade600),
            ),

            const SizedBox(height: 12),
            // Info bar
            Row(
              children: [
                const Icon(Icons.location_on_outlined,
                    size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(location,
                    style:
                        TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                const SizedBox(width: 12),
                const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(postedDate,
                    style:
                        TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                const SizedBox(width: 12),
                const Icon(Icons.date_range, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(deadlineDate,
                    style:
                        TextStyle(fontSize: 12, color: Colors.grey.shade600)),
              ],
            ),

            const SizedBox(height: 12),
            // Price & level
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    level,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),
            // Applicants & views & rating
            Row(
              children: [
                Icon(Icons.group_outlined,
                    size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text("$applicants pelamar",
                    style:
                        TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                const SizedBox(width: 12),
                Icon(Icons.visibility_outlined,
                    size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text("$views views",
                    style:
                        TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                const Spacer(),
                Icon(Icons.star, size: 16, color: Colors.amber),
                const SizedBox(width: 4),
                Text(rating.toStringAsFixed(1)),
              ],
            ),

            const SizedBox(height: 16),
            // Buttons
            Row(
              children: [
                // Apply button (50%)
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    onPressed: onApply,
                    icon: const Icon(Icons.send, size: 16),
                    label: const Text("Apply"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),

                // Detail button (25%)
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: onDetail,
                    child: const Text("Detail"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),

                // Share button (icon only, 25%)
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed:
                        onDetail, // <- ganti ke onShare kalau nanti dipisah
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Icon(Icons.share),
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
