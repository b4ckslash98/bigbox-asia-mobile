import 'package:flutter/material.dart';

class TalentNotifView extends StatefulWidget {
  const TalentNotifView({super.key});

  @override
  State<TalentNotifView> createState() => _TalentNotifViewState();
}

class _TalentNotifViewState extends State<TalentNotifView> {
  int selectedFilterIndex = 0;

  final List<_FilterItem> filters = [
    _FilterItem(label: 'Semua', count: 12, icon: Icons.notifications),
    _FilterItem(label: 'Belum Dibaca', count: 4, icon: Icons.notifications_off),
    _FilterItem(label: 'Aplikasi Talent', count: 8, icon: Icons.apps),
  ];

  @override
  Widget build(BuildContext context) {
    final selected = filters[selectedFilterIndex];
    double appBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.only(
                top: appBarHeight + 8, left: 16, right: 16, bottom: 12),
            decoration: const BoxDecoration(color: Color(0xffFF6739)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Notifikasi',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 4),
                const SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    hintText: 'Cari notifikasi...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.check),
                  label: const Text('Tandai Semua'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Tab Filter
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              color: Colors.white,
              child: Row(
                children: List.generate(filters.length, (index) {
                  final f = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: _NotifTab(
                      label: f.label,
                      count: f.count,
                      icon: f.icon,
                      isSelected: selectedFilterIndex == index,
                      onTap: () {
                        setState(() {
                          selectedFilterIndex = index;
                        });
                      },
                    ),
                  );
                }),
              ),
            ),
          ),

          // Konten
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.notifications_none, size: 60, color: Colors.grey),
                  SizedBox(height: 12),
                  Text(
                    'Tidak ada notifikasi',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 4),
                  Text('Anda tidak memiliki notifikasi saat ini',
                      style: TextStyle(color: Colors.black45)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NotifTab extends StatelessWidget {
  final String label;
  final int count;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _NotifTab({
    required this.label,
    required this.count,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = isSelected ? Colors.orange : Colors.grey[200];
    final textColor = isSelected ? Colors.white : Colors.black87;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Chip(
        avatar: Icon(icon, size: 18, color: textColor),
        label: Text(
          '$label ($count)',
          style: TextStyle(color: textColor),
        ),
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}

class _FilterItem {
  final String label;
  final int count;
  final IconData icon;

  _FilterItem({required this.label, required this.count, required this.icon});
}
