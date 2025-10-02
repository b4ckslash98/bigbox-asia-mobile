import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../lib.dart';

@RoutePage()
class AdminAnnouncementView extends StatefulWidget implements AutoRouteWrapper {
  const AdminAnnouncementView({super.key});

  @override
  _AdminAnnouncementViewState createState() => _AdminAnnouncementViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _AdminAnnouncementViewState extends State<AdminAnnouncementView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          // Header + TabBar

          Container(
            padding: EdgeInsets.only(
                top: appBarHeight + 8, left: 16, right: 16, bottom: 12),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEC2323), Color(0xFFFF6B00)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back & Title
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        router.maybePop();
                      },
                      child: const Icon(Icons.arrow_back,
                          color: Colors.white, size: 20),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Pengumuman & Artikel",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                const Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Kelola konten untuk klien & talent",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                ),
                const SizedBox(height: 12),
                // TabBar Custom
                Container(
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      buildTabItem(0, Icons.announcement, "Pengumuman"),
                      buildTabItem(1, Icons.article_outlined, "Artikel"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Content
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PengumumanTabView(),
                const ArtikelTabView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabItem(int index, IconData icon, String label) {
    final isSelected = _tabController.index == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _tabController.animateTo(index);
          setState(() {});
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? Color(0xffFF6739) : Colors.white,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Color(0xffFF6739) : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabContent(String type) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        buildCard(
            "$type 1", "Detail tentang $type 1. Ini adalah deskripsi singkat."),
        buildCard(
            "$type 2", "Detail tentang $type 2. Ini adalah deskripsi singkat."),
      ],
    );
  }

  Widget buildCard(String title, String desc) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(desc, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
