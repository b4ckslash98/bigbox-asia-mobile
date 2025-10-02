import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../lib.dart';

@RoutePage()
class AdminKelolaClientView extends StatefulWidget implements AutoRouteWrapper {
  const AdminKelolaClientView({super.key});

  @override
  State<AdminKelolaClientView> createState() => _AdminKelolaClientViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AdminKelolaClientCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _AdminKelolaClientViewState extends State<AdminKelolaClientView> {
  String searchQuery = '';
  String selectedStatus = 'Semua';
  final List<String> statuses = ['Semua', 'Aktif', 'Nonaktif', 'Review'];

  @override
  void initState() {
    super.initState();
    context.read<AdminKelolaClientCubit>().fetchAdminClient();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Kelola Client',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Navigate to add client page
            },
          ),
        ],
      ),
      body: BlocBuilder<AdminKelolaClientCubit, AdminKelolaClientState>(
        builder: (context, state) {
          final clients = state.adminClient?.data ?? [];

          return Column(
            children: [
              // Statistics Cards
              _buildStatisticsSection(clients),

              // Search and Filter Section
              _buildSearchAndFilterSection(),

              // Client List
              Expanded(
                child: _buildClientList(clients),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStatisticsSection(List<DatumGetAdminClient> clients) {
    final totalClients = clients.length;
    final activeClients = clients
        .where((client) =>
            client.isActive == true &&
            client.verificationStatus?.toUpperCase() == 'APPROVED')
        .length;
    final pendingClients = clients
        .where(
            (client) => client.verificationStatus?.toUpperCase() == 'IN_REVIEW')
        .length;
    final inactiveClients =
        clients.where((client) => client.isActive == false).length;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatCard(
            icon: Icons.business_outlined,
            iconColor: Colors.grey,
            count: totalClients.toString(),
            label: 'Total',
          ),
          _buildStatCard(
            icon: Icons.business,
            iconColor: Colors.green,
            count: activeClients.toString(),
            label: 'Aktif',
          ),
          _buildStatCard(
            icon: Icons.access_time_outlined,
            iconColor: Colors.orange,
            count: pendingClients.toString(),
            label: 'Review',
          ),
          _buildStatCard(
            icon: Icons.business_outlined,
            iconColor: Colors.red,
            count: inactiveClients.toString(),
            label: 'Nonaktif',
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required Color iconColor,
    required String count,
    required String label,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
            const SizedBox(height: 8),
            Text(
              count,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchAndFilterSection() {
    return Padding(
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
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Cari client...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
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
                  child: FilterChip(
                    selected: isSelected,
                    label: Text(status),
                    onSelected: (selected) {
                      setState(() {
                        selectedStatus = status;
                      });
                    },
                    selectedColor: Color(0xffFF6739).withOpacity(0.2),
                    checkmarkColor: Color(0xffFF6739),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClientList(List<DatumGetAdminClient> clients) {
    // Filter clients based on search and status
    final filteredClients = clients.where((client) {
      final email = client.email?.toLowerCase() ?? '';
      final searchMatch = email.contains(searchQuery.toLowerCase());

      final status = _getStatusText(client.isActive, client.verificationStatus);
      final statusMatch = selectedStatus == 'Semua' ||
          status.toLowerCase() == selectedStatus.toLowerCase();

      return searchMatch && statusMatch;
    }).toList();

    if (filteredClients.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.business_outlined,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              clients.isEmpty
                  ? 'Belum ada data client'
                  : 'Tidak ada client yang sesuai',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        const SizedBox(height: 16),
        // Results count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                'Menampilkan ${filteredClients.length} dari ${clients.length} client',
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
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: filteredClients.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _buildClientCard(filteredClients[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildClientCard(DatumGetAdminClient client) {
    final status = _getStatusText(client.isActive, client.verificationStatus);
    final statusColor = _getStatusColor(status);
    final joinDate =
        client.createdAt != null ? _formatDate(client.createdAt!) : '-';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with email and status
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      client.email ?? 'No Email',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Role: ${client.role ?? 'CLIENT'}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  status.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert),
                onSelected: (value) => _handleClientAction(client, value),
                itemBuilder: (context) => _buildMenuItems(client),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Client info
          Row(
            children: [
              Icon(
                Icons.access_time,
                size: 16,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Text(
                'Bergabung $joinDate',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),

          if (client.verificationNote != null &&
              client.verificationNote.toString().isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      client.verificationNote.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  List<PopupMenuEntry<String>> _buildMenuItems(DatumGetAdminClient client) {
    final verificationStatus =
        client.verificationStatus?.toLowerCase() ?? 'in_review';
    final isActive = client.isActive ?? false;

    List<PopupMenuEntry<String>> items = [
      const PopupMenuItem<String>(
        value: 'detail',
        child: Row(
          children: [
            Icon(Icons.visibility, color: Colors.blue, size: 18),
            SizedBox(width: 8),
            Text('Lihat Detail'),
          ],
        ),
      ),
    ];

    // Show approve if not approved
    if (verificationStatus != 'approved') {
      items.add(
        const PopupMenuItem<String>(
          value: 'approve',
          child: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 18),
              SizedBox(width: 8),
              Text('Setujui'),
            ],
          ),
        ),
      );
    }

    // Show reject if not rejected
    if (verificationStatus != 'rejected') {
      items.add(
        const PopupMenuItem<String>(
          value: 'reject',
          child: Row(
            children: [
              Icon(Icons.cancel, color: Colors.red, size: 18),
              SizedBox(width: 8),
              Text('Tolak'),
            ],
          ),
        ),
      );
    }

    // Activate/Deactivate
    if (isActive) {
      items.add(
        const PopupMenuItem<String>(
          value: 'deactivate',
          child: Row(
            children: [
              Icon(Icons.person_off, color: Colors.orange, size: 18),
              SizedBox(width: 8),
              Text('Nonaktifkan'),
            ],
          ),
        ),
      );
    } else {
      items.add(
        const PopupMenuItem<String>(
          value: 'activate',
          child: Row(
            children: [
              Icon(Icons.person, color: Colors.blue, size: 18),
              SizedBox(width: 8),
              Text('Aktifkan'),
            ],
          ),
        ),
      );
    }

    return items;
  }

  void _handleClientAction(DatumGetAdminClient client, String action) {
    final cubit = context.read<AdminKelolaClientCubit>();

    switch (action) {
      case 'detail':
        // Navigate to detail page
        break;
      case 'approve':
        _showConfirmDialog(
          'Setujui Client',
          'Apakah Anda yakin ingin menyetujui client ${client.email}?',
          'Setujui',
          Colors.green,
          () {
            cubit.approveClient(
              client.email ?? '',
              VerificationStatus.approved.value,
            );
          },
        );
        break;
      case 'reject':
        _showRejectDialog(client, cubit);
        break;
      case 'activate':
        _showConfirmDialog(
          'Aktifkan Client',
          'Apakah Anda yakin ingin mengaktifkan client ${client.email}?',
          'Aktifkan',
          Colors.blue,
          () {
            // Note: Since there's no activate/deactivate method in cubit,
            // we'll use the approve method with current verification status
            // You might need to add a separate method for this in the cubit
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Fitur aktivasi akan segera tersedia'),
                backgroundColor: Colors.orange,
              ),
            );
          },
        );
        break;
      case 'deactivate':
        _showConfirmDialog(
          'Nonaktifkan Client',
          'Apakah Anda yakin ingin menonaktifkan client ${client.email}?',
          'Nonaktifkan',
          Colors.orange,
          () {
            // Note: Since there's no activate/deactivate method in cubit,
            // we'll use the approve method with current verification status
            // You might need to add a separate method for this in the cubit
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Fitur deaktivasi akan segera tersedia'),
                backgroundColor: Colors.orange,
              ),
            );
          },
        );
        break;
    }
  }

  void _showConfirmDialog(
    String title,
    String message,
    String confirmText,
    Color confirmColor,
    VoidCallback onConfirm,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: confirmColor,
            ),
            child: Text(
              confirmText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _showRejectDialog(
      DatumGetAdminClient client, AdminKelolaClientCubit cubit) {
    final noteController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Tolak Client'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Apakah Anda yakin ingin menolak client ${client.email}?'),
            const SizedBox(height: 16),
            const Text(
              'Alasan penolakan (opsional):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: noteController,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: 'Masukkan alasan penolakan...',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              cubit.approveClient(
                client.email ?? '',
                VerificationStatus.rejected.value,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text(
              'Tolak',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  String _getStatusText(bool? isActive, String? verificationStatus) {
    if (isActive == false) {
      return 'Nonaktif';
    }

    switch (verificationStatus?.toUpperCase()) {
      case 'APPROVED':
        return 'Aktif';
      case 'IN_REVIEW':
        return 'Review';
      case 'REJECTED':
        return 'Ditolak';
      default:
        return 'Review';
    }
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'aktif':
        return Colors.green;
      case 'review':
        return Colors.orange;
      case 'ditolak':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  String _formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }
}
