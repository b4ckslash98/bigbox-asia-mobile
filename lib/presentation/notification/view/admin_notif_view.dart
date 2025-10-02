import 'package:flutter/material.dart';
import '../../../lib.dart'; // Pastikan ini mengarah ke file lib yang benar

class AdminNotifView extends StatefulWidget {
  const AdminNotifView({Key? key}) : super(key: key);

  @override
  State<AdminNotifView> createState() => _AdminNotifViewState();
}

class _AdminNotifViewState extends State<AdminNotifView> {
  String selectedStatus = 'Semua';
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> notificationList = [
    {
      'title': 'Job Baru Memerlukan Approval',
      'description':
          'Job "Casting Iklan Bumbu Masak" dari Bang Sugi memerlukan persetujuan.',
      'date': '8 Jul',
      'time': '02.31',
      'status': 'Pending',
      'isRead': false, // Marked as unread
    },
    {
      'title': 'Job Baru Memerlukan Approval',
      'description':
          'Job "Iklan susu tes 2025" dari Demo Client memerlukan persetujuan.',
      'date': '8 Jul',
      'time': '02.24',
      'status': 'Approval job',
      'isRead': true, // Marked as read
    },
    {
      'title': 'Job Baru Memerlukan Approval',
      'description':
          'Job "Iklan Bukalapak 2025" dari Demo Client memerlukan persetujuan.',
      'date': '8 Jul',
      'time': '02.15',
      'status': 'Talent baru',
      'isRead': false, // Marked as unread
    },
  ];

  void _setStatus(String status) {
    setState(() {
      selectedStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = notificationList.where((notification) {
      final matchStatus = selectedStatus == 'Semua' ||
          notification['status'].toString().toLowerCase() ==
              selectedStatus.toLowerCase();

      // Check if search text matches either title or description
      final matchSearch = searchController.text.isEmpty ||
          notification['title']
              .toLowerCase()
              .contains(searchController.text.toLowerCase()) ||
          notification['description']
              .toLowerCase()
              .contains(searchController.text.toLowerCase());

      return matchStatus && matchSearch;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // Header: Bisa diganti dengan HeaderNotifAdmin jika kamu punya
          HeaderNotifAdmin(),
          SizedBox(height: 10),
          // Search & Filter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // Search
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Cari notifikasi...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        searchController.clear();
                        setState(() {});
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (_) => setState(() {}),
                ),
                const SizedBox(height: 16),
                // Filter Status & Button
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      'Semua',
                      'Pending',
                      'Approval job',
                      'Talent baru',
                    ].map((status) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ChoiceChip(
                          label: Text(status),
                          selected: selectedStatus == status,
                          selectedColor: Color(0xffFF6739), // Active chip color
                          backgroundColor:
                              Colors.grey[300], // Inactive chip color
                          labelStyle: TextStyle(
                            color: selectedStatus == status
                                ? Colors.white
                                : Colors.black, // Change text color
                          ),
                          onSelected: (isSelected) {
                            if (isSelected) {
                              _setStatus(status);
                            }
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
                // Expanded(
                //   child: DropdownButtonFormField<String>(
                //     value: selectedStatus,
                //     items: [
                //       'Semua',
                //       'Pending',
                //       'Approval job',
                //       'Talent baru',
                //     ]
                //         .map((status) => DropdownMenuItem(
                //               value: status,
                //               child: Text(status),
                //             ))
                //         .toList(),
                //     onChanged: (value) {
                //       if (value != null) _setStatus(value);
                //     },
                //     decoration: InputDecoration(
                //       contentPadding: const EdgeInsets.symmetric(
                //           vertical: 8, horizontal: 12),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //       ),
                //       filled: true,
                //       fillColor: Colors.white,
                //     ),
                //   ),
                // ),
                const SizedBox(width: 8),
                _buildMarkAllAsReadButton(context),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // List of filtered notifications
          Expanded(
            child: filteredList.isEmpty
                ? const Center(
                    child: Text('Tidak ada notifikasi ditemukan.'),
                  )
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final notification = filteredList[index];
                      return NotifAdminCard(
                        isRead: notification['isRead'],
                        title: notification['title'],
                        description: notification['description'],
                        date: notification['date'],
                        time: notification['time'],
                        status: notification['status'],
                        onActionPressed: () {
                          debugPrint(
                              "Action required for: ${notification['title']}");
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildMarkAllAsReadButton(BuildContext context) {
    return SizedBox(
      width: context.sizeWidth,
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Semua notifikasi telah ditandai sebagai dibaca!'),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF6739),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          foregroundColor: Colors.white,
        ),
        child: const Text(
          "Tandai Semua",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
