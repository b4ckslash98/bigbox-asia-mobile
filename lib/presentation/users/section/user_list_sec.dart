import 'package:flutter/material.dart';

import '../../../lib.dart';

class UserListWithFilter extends StatefulWidget {
  final List<Map<String, dynamic>> users;

  const UserListWithFilter({super.key, required this.users});

  @override
  State<UserListWithFilter> createState() => _UserListWithFilterState();
}

class _UserListWithFilterState extends State<UserListWithFilter> {
  String searchQuery = '';
  String selectedStatus = 'Semua';

  // Updated status list to match actual data
  final List<String> statuses = ['Semua', 'Aktif', 'Nonaktif', 'Review'];

  @override
  Widget build(BuildContext context) {
    // Filter data berdasarkan pencarian dan status
    final filteredUsers = widget.users.where((user) {
      final nameMatch =
          user['name'].toLowerCase().contains(searchQuery.toLowerCase());
      final emailMatch =
          user['email'].toLowerCase().contains(searchQuery.toLowerCase());
      final searchMatch = nameMatch || emailMatch;

      final statusMatch = selectedStatus == 'Semua' ||
          user['status'].toLowerCase() == selectedStatus.toLowerCase();
      return searchMatch && statusMatch;
    }).toList();

    return Column(
      children: [
        const SizedBox(height: 16),

        // Search & Filter
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // Search Field
              Container(
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
                        decoration: const InputDecoration(
                          hintText: 'Cari berdasarkan nama atau email',
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
              const SizedBox(height: 12),

              // Status Filter Buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: statuses.map((status) {
                    final isSelected = selectedStatus == status;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(status),
                        selected: isSelected,
                        onSelected: (_) {
                          setState(() => selectedStatus = status);
                        },
                        selectedColor: Color(0xffFF6739),
                        backgroundColor: Colors.grey[200],
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Results count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                'Menampilkan ${filteredUsers.length} dari ${widget.users.length} talent',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        Expanded(
          child: filteredUsers.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_off,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Tidak ada data yang ditemukan',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Coba ubah kata kunci atau filter pencarian',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: filteredUsers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: UserCard(user: filteredUsers[index]),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
