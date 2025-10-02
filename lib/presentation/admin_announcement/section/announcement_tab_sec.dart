import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../lib.dart'; // Import AnnouncementCard

class PengumumanTabView extends StatefulWidget {
  const PengumumanTabView({super.key});

  @override
  State<PengumumanTabView> createState() => _PengumumanTabViewState();
}

class _PengumumanTabViewState extends State<PengumumanTabView> {
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  final List<Map<String, dynamic>> dataList = [
    {
      'title': 'Pengumuman Trading bersama',
      'content':
          '<p><strong>Halo semuanya!</strong></p><p>Kami akan melakukan sesi trading bersama setiap hari Jumat malam!</p>',
      'adminName': 'Admin BGBox',
      'dateTime': '2025-06-16T22:16:00',
      'views': 8,
      'status': 'Live',
      'tags': ['Published', 'Medium']
    },
    {
      'title': 'Update Jadwal Live Class',
      'content':
          '<p>Jadwal live class akan berubah mulai minggu depan. Silakan cek kalender baru.</p>',
      'adminName': 'Admin Sarah',
      'dateTime': '2025-06-10T10:00:00',
      'views': 12,
      'status': 'Live',
      'tags': ['Published', 'High']
    },
    {
      'title': 'Maintenance Sistem',
      'content':
          '<p>Sistem akan maintenance pada Sabtu malam mulai pukul 22.00 WIB hingga selesai.</p>',
      'adminName': 'Admin Dimas',
      'dateTime': '2025-06-01T18:45:00',
      'views': 30,
      'status': 'Draft',
      'tags': ['Unpublished', 'Critical']
    }
  ];

  @override
  Widget build(BuildContext context) {
    // Filter dataList berdasarkan pencarian
    final filteredList = dataList.where((item) {
      final title = item['title'].toString().toLowerCase();
      final content = _stripHtml(item['content']).toLowerCase();
      final admin = item['adminName'].toString().toLowerCase();
      final query = searchQuery.toLowerCase();
      return title.contains(query) ||
          content.contains(query) ||
          admin.contains(query);
    }).toList();

    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        // 🔍 Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.red),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Cari berdasarkan nama, konten, admin',
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() => searchQuery = value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            // Published Box
            _buildStatusCard(
              count: _getStatusCount('Published'),
              label: 'Published',
              icon: Icons.check_circle,
              iconColor: Colors.green,
              bgColor: Colors.green.withOpacity(0.1),
            ),
            const SizedBox(width: 12),
            // Draft Box
            _buildStatusCard(
              count: _getStatusCount('Draft'),
              label: 'Draft',
              icon: Icons.access_time_rounded,
              iconColor: Colors.orange,
              bgColor: Colors.orange.withOpacity(0.1),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.sizeWidth,
          child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffFF6739)),
              onPressed: () {
                router.push(AdminCreateAnnouncementRoute());
              },
              child: Text('Buat Pengumuman')),
        ),
        const SizedBox(height: 12),

        // 📋 List Announcement
        ...filteredList.map((data) {
          return AnnouncementCard(
            title: data['title'],
            content: _stripHtml(data['content']),
            adminName: data['adminName'],
            dateTime: DateTime.parse(data['dateTime']),
            views: data['views'],
            status: data['status'],
            tags: List<String>.from(data['tags']),
          );
        }).toList(),

        // 🕵️‍♂️ Kosong?
        if (filteredList.isEmpty)
          const Padding(
            padding: EdgeInsets.only(top: 32),
            child: Center(
              child: Text('Tidak ada hasil yang cocok.'),
            ),
          ),
      ],
    );
  }

  /// Bersihkan HTML tags
  String _stripHtml(String html) {
    return html
        .replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  Widget _buildStatusCard({
    required int count,
    required String label,
    required IconData icon,
    required Color iconColor,
    required Color bgColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(6),
              child: Icon(icon, color: iconColor, size: 20),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$count',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text(label, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  int _getStatusCount(String status) {
    return dataList.where((item) {
      final tags = List<String>.from(item['tags']);
      return tags.contains(status);
    }).length;
  }
}
