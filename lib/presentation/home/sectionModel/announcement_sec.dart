import 'package:flutter/material.dart';

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> announcements = [
      {
        'title': 'Update Kebijakan Platform...',
        'desc': 'Kami telah memperbarui kebijakan platform untuk memberikan...',
        'time': '23 hari lalu',
      },
      {
        'title': 'Pengumuman Trading bersama',
        'desc':
            'Halo semuanya! Kami dengan bangga mengumumkan bahwa saat ini kami...',
        'time': '23 hari lalu',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Header
          Row(
            children: [
              const Icon(Icons.campaign_outlined, color: Colors.orange),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pengumuman",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("Update terbaru untuk Anda",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // TODO: Arahkan ke halaman semua pengumuman
                },
                child: const Row(
                  children: [
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        size: 12, color: Colors.orange),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),

          // List pengumuman
          ...announcements.map((item) {
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.campaign,
                        size: 20, color: Colors.redAccent),
                  ),
                  const SizedBox(width: 12),

                  // Text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'] ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['desc'] ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['time'] ?? '',
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.grey),
                            ),
                            const Text(
                              'Lihat →',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
