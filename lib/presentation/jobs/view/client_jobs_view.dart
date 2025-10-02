import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';

class ClientJobsView extends StatefulWidget {
  const ClientJobsView({super.key});

  @override
  _ClientJobsViewState createState() => _ClientJobsViewState();
}

class _ClientJobsViewState extends State<ClientJobsView> {
  String searchQuery = '';
  String selectedFilter = 'Semua';

  @override
  void initState() {
    super.initState();
    // Fetch data saat widget pertama kali dimuat
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<JobsCubit>().getMyJobs();
    });
  }

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: BlocBuilder<JobsCubit, JobsState>(
        builder: (context, state) {
          // Convert API data to local format untuk kompatibilitas dengan UI existing
          List<Map<String, dynamic>> data = [];

          if (state.myJobs?.data != null) {
            data = state.myJobs!.data!.map((job) {
              return {
                'status': _getStatusDisplay(job.status ?? ''),
                'raw_status': job.status ?? '', // Keep original status
                'tags': [
                  _getJobTypeFromStatus(job.status ?? ''),
                  _getStatusDisplay(job.status ?? '')
                ],
                'title': job.title ?? '',
                'description': job.description ?? '',
                'salary_range': _buildSalaryRange(job.roles),
                'location': _buildLocationString(job.locations),
                'applications_count': 0,
                'application_deadline': _buildDeadline(job.schedules),
                'statistics': {
                  'views': 0,
                  'applications': 0,
                  'conversion': '0%'
                },
                'actions': ['Lihat Aplikasi', 'Edit'],
                'created_at': _formatDate(job.createdAt),
                'updated_at': _formatDate(job.updatedAt),
                'id': job.id ?? '',
                'raw_job': job,
              };
            }).toList();
          }

          List<Map<String, dynamic>> filteredData = data.where((job) {
            bool matchesFilter =
                selectedFilter == 'Semua' || job['status'] == selectedFilter;
            bool matchesSearch = job['title']
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase()) ||
                job['description']
                    .toLowerCase()
                    .contains(searchQuery.toLowerCase());
            return matchesFilter && matchesSearch;
          }).toList();

          return Column(
            children: [
              // Header / Filter Area
              Container(
                padding: EdgeInsets.only(
                    top: appBarHeight + 8, left: 16, right: 16, bottom: 12),
                decoration: BoxDecoration(color: Color(0xffFF6739)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kelola Jobs\n${data.length} total jobs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.orange,
                            elevation: 0,
                          ),
                          onPressed: () {
                            router.push(ClientPostingJobRoute());
                          },
                          icon: const Icon(Icons.add),
                          label: const Text('Buat Job'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Search box
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Cari jobs...',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Filter chips - Updated dengan status enum
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildStatusFilter('Semua', 'Semua', data.length),
                          const SizedBox(width: 8),
                          _buildStatusFilter(
                              'Dipublikasi',
                              'Dipublikasi',
                              data
                                  .where(
                                      (job) => job['status'] == 'Dipublikasi')
                                  .length),
                          const SizedBox(width: 8),
                          _buildStatusFilter(
                              'Dalam Review',
                              'Dalam Review',
                              data
                                  .where(
                                      (job) => job['status'] == 'Dalam Review')
                                  .length),
                          const SizedBox(width: 8),
                          _buildStatusFilter(
                              'Ditolak',
                              'Ditolak',
                              data
                                  .where((job) => job['status'] == 'Ditolak')
                                  .length),
                          const SizedBox(width: 8),
                          _buildStatusFilter(
                              'Dibatalkan',
                              'Dibatalkan',
                              data
                                  .where((job) => job['status'] == 'Dibatalkan')
                                  .length),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Job Cards List
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: state.myJobs == null
                      ? const Center(child: CircularProgressIndicator())
                      : filteredData.isEmpty
                          ? const Center(child: Text('No jobs found'))
                          : ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: filteredData.length,
                              itemBuilder: (context, index) {
                                return _buildJobCard(filteredData[index]);
                              },
                            ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // Helper methods untuk convert data API
  String _getStatusDisplay(String status) {
    switch (status.toLowerCase()) {
      case 'publish':
        return 'Dipublikasi';
      case 'in_review':
        return 'Dalam Review';
      case 'reject':
        return 'Ditolak';
      case 'cancel':
        return 'Dibatalkan';
      default:
        return status;
    }
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'publish':
        return Colors.green;
      case 'in_review':
        return Colors.orange;
      case 'reject':
        return Colors.red;
      case 'cancel':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }

  String _getJobTypeFromStatus(String status) {
    return 'iklan'; // Default, bisa disesuaikan dengan data dari API
  }

  String _buildSalaryRange(List<GetClientMyJobModelRole>? roles) {
    if (roles == null || roles.isEmpty) return 'Rp 0';

    // Ambil payment amount dari role pertama dan format
    final paymentAmount = roles.first.paymentAmount ?? '0';
    return _formatCurrency(paymentAmount);
  }

  String _buildLocationString(
      List<GetClientMyJobModelLocationElement>? locations) {
    if (locations == null || locations.isEmpty) return 'Lokasi tidak tersedia';

    // Combine location notes
    return locations
        .map((loc) => loc.notes ?? '')
        .where((note) => note.isNotEmpty)
        .join(', ');
  }

  String _buildDeadline(List<GetClientMyJobModelSchedule>? schedules) {
    if (schedules == null || schedules.isEmpty) return 'Tidak ada deadline';

    final endTime = schedules.first.endTime;
    if (endTime == null) return 'Tidak ada deadline';

    final now = DateTime.now();
    final difference = endTime.difference(now).inDays;

    return '${_formatDate(endTime)} (${difference > 0 ? '$difference hari lagi' : 'Expired'})';
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day}/${date.month}/${date.year}';
  }

  Widget _buildStatusFilter(String label, String filter, int count) {
    bool selected = selectedFilter == filter;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilter = filter;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.orange.shade400,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(
                color: selected ? Colors.orange : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (selected) ...[
              const SizedBox(width: 6),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.orange,
                child: Text(
                  count.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  String _formatCurrency(String? amount) {
    if (amount == null || amount.isEmpty) return 'Rp 0';

    final numericAmount = double.tryParse(amount)?.toInt() ?? 0;
    return 'Rp ${numericAmount.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        )}';
  }

  Widget _buildJobCard(Map<String, dynamic> job) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status and tag - Updated dengan warna sesuai status
            Row(
              children: [
                _buildTag(job['tags'][0], Colors.green),
                const SizedBox(width: 8),
                _buildTag(job['tags'][1], _getStatusColor(job['raw_status'])),
                const Spacer(),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) {
                    if (value == 'hapus') {
                      _showDeleteConfirmation();
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'hapus',
                      child: Text('Hapus Job'),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 12),
            // Title and description
            Text(
              job['title'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(job['description']),
            const SizedBox(height: 8),

            // Status container - Tambahan untuk menampilkan status dengan background
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: _getStatusColor(job['raw_status']).withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: _getStatusColor(job['raw_status']).withOpacity(0.3),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _getStatusIcon(job['raw_status']),
                    size: 16,
                    color: _getStatusColor(job['raw_status']),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    job['status'],
                    style: TextStyle(
                      color: _getStatusColor(job['raw_status']),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
            // Salary and location
            Row(
              children: [
                const Icon(Icons.attach_money, size: 16),
                SizedBox(width: 4),
                Text(
                  job['salary_range'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              job['location'],
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            // Applications & Date
            Row(
              children: [
                const Icon(Icons.person_outline, size: 16),
                SizedBox(width: 4),
                Text('${job['applications_count']} aplikasi'),
                Spacer(),
                const Icon(Icons.calendar_today_outlined, size: 16),
                SizedBox(width: 4),
                Text(job['application_deadline']),
              ],
            ),
            const SizedBox(height: 12),
            // Stats
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _StatItem(
                      label: 'Views',
                      value: job['statistics']['views'].toString()),
                  _StatItem(
                      label: 'Aplikasi',
                      value: job['statistics']['applications'].toString()),
                  _StatItem(
                      label: 'Conversion',
                      value: job['statistics']['conversion']),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      router.push(ClientDetailJobCardRoute(
                        jobId: job['id'],
                      ));
                    },
                    child: const Text('Lihat Aplikasi'),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {
                    router.push(ClientEditJobRoute(idJobs: job['id']));
                  },
                  child: const Text('Edit'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Dibuat ${job['created_at']} • Diupdate ${job['updated_at']}',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getStatusIcon(String status) {
    switch (status.toLowerCase()) {
      case 'publish':
        return Icons.check_circle;
      case 'in_review':
        return Icons.schedule;
      case 'reject':
        return Icons.cancel;
      case 'cancel':
        return Icons.block;
      default:
        return Icons.info;
    }
  }

  Widget _buildTag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _StatItem({required String label, required String value}) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
        ),
      ],
    );
  }

  void _showDeleteConfirmation() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const Text(
                'Konfirmasi Hapus',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text('Apakah kamu yakin ingin menghapus job ini?'),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Batal'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Hapus'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
