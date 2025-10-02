import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';

@RoutePage()
class ClientDetailJobCardView extends StatefulWidget
    implements AutoRouteWrapper {
  final String jobId;

  const ClientDetailJobCardView({
    super.key,
    required this.jobId,
  });

  @override
  _ClientDetailJobCardViewState createState() =>
      _ClientDetailJobCardViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ClientDetailJobCardCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _ClientDetailJobCardViewState extends State<ClientDetailJobCardView> {
  String _selectedStatusFilter = 'all'; // Default filter

  @override
  void initState() {
    super.initState();
    context.read<ClientDetailJobCardCubit>().loadJobData(widget.jobId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Job'),
        backgroundColor: const Color(0xffFF6739),
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<ClientDetailJobCardCubit, ClientDetailJobCardState>(
        builder: (context, state) {
          if (state.jobDetail == null && state.getAplicationTalent == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final filteredApplications = _filterApplications(
            state.getAplicationTalent?.data ?? [],
          );

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (state.jobDetail?.data != null) ...[
                  _buildJobOverviewCard(state.jobDetail!.data!),
                  const SizedBox(height: 16),
                ],
                if (state.getAplicationTalent?.data != null) ...[
                  _buildStatusFilterDropdown(),
                  const SizedBox(height: 16),
                  _buildApplicationsCard(filteredApplications),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatusFilterDropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Filter Status:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        DropdownButton<String>(
          value: _selectedStatusFilter,
          items: const [
            DropdownMenuItem(value: 'all', child: Text('Semua')),
            DropdownMenuItem(value: 'in_review', child: Text('Dalam Review')),
            DropdownMenuItem(value: 'shortlist', child: Text('Shortlist')),
            DropdownMenuItem(value: 'hired', child: Text('Diterima')),
            DropdownMenuItem(value: 'reject', child: Text('Ditolak')),
          ],
          onChanged: (value) {
            setState(() {
              _selectedStatusFilter = value!;
            });
          },
        ),
      ],
    );
  }

  List<DatumGetAplicationTalent> _filterApplications(
      List<DatumGetAplicationTalent> applications) {
    if (_selectedStatusFilter == 'all') {
      return applications;
    }
    return applications
        .where((application) =>
            application.statusApplication == _selectedStatusFilter)
        .toList();
  }

  Widget _buildJobOverviewCard(GetDetailJobsResponseData jobData) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.work, color: Colors.orange.shade600, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Overview Job',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildInfoRow('Judul', jobData.title ?? 'N/A'),
            _buildInfoRow('Status', _getStatusText(jobData.status)),
            _buildInfoRow(
                'Deskripsi', jobData.description ?? 'Tidak ada deskripsi'),
            _buildInfoRow('Kategori', _buildCategoryString(jobData.categories)),
            _buildInfoRow('Lokasi', _buildLocationString(jobData.locations)),
            _buildInfoRow('Gaji', _buildSalaryRange(jobData.roles)),
            _buildInfoRow(
                'Total Aplikasi', '${jobData.totalApplications ?? 0}'),
            _buildInfoRow('Views', '${jobData.views ?? 0}'),
          ],
        ),
      ),
    );
  }

  Widget _buildApplicationsCard(List<DatumGetAplicationTalent> applications) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.people, color: Colors.blue.shade600, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Daftar Pelamar (${applications.length})',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (applications.isEmpty)
              Container(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.people_outline,
                        size: 64,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Belum ada pelamar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            else
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: applications.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final application = applications[index];
                  return _buildApplicationCard(application, index + 1);
                },
              ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'in_review':
        return Colors.orange;
      case 'shortlist':
        return Colors.blue;
      case 'hired':
        return Colors.green;
      case 'reject':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  String _getStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'in_review':
        return 'Dalam Review';
      case 'shortlist':
        return 'Shortlist';
      case 'hired':
        return 'Diterima';
      case 'reject':
        return 'Ditolak';
      default:
        return 'Tidak diketahui';
    }
  }

  Widget _buildApplicationCard(
      DatumGetAplicationTalent application, int index) {
    final user = application.user;
    final profile = user?.profile;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue.shade100,
                backgroundImage: profile?.photoProfile != null
                    ? NetworkImage(profile!.photoProfile!)
                    : null,
                child: profile?.photoProfile == null
                    ? Text(
                        '#$index',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile?.name ?? 'Nama tidak tersedia',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      user?.email ?? 'Email tidak tersedia',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Chip(
                label: Text(
                  _getStatusText(application.statusApplication),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: _getStatusColor(application.statusApplication),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (profile?.phone != null) ...[
            Row(
              children: [
                Icon(Icons.phone, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 8),
                Text(
                  profile!.phone!,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
          if (profile?.location?.name != null) ...[
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    profile!.location!.name!,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
          if (profile?.age != null) ...[
            Row(
              children: [
                Icon(Icons.cake, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 8),
                Text(
                  'Usia: ${profile!.age} tahun',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(width: 16),
                if (profile.gender != null) ...[
                  Icon(
                    profile.gender?.toLowerCase() == 'male' ||
                            profile.gender?.toLowerCase() == 'pria'
                        ? Icons.male
                        : Icons.female,
                    size: 16,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    profile.gender!,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 8),
          ],
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey.shade600),
              const SizedBox(width: 8),
              Text(
                'Bergabung: ${_formatDate(user?.createdAt)}',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    router.push(AdminDetailUsersCardRoute(
                      talentId: user!.id!,
                    ));
                  },
                  icon: const Icon(Icons.visibility, size: 16),
                  label: const Text('Lihat Detail'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    _showContactOptions(application);
                  },
                  icon: const Icon(Icons.contact_phone, size: 16),
                  label: const Text('Kontak'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.green.shade600,
                    side: BorderSide(color: Colors.green.shade600),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (application.statusApplication == 'in_review') ...[
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _showConfirmationDialog(
                        application,
                        'Terima Pelamar',
                        'Apakah Anda yakin ingin menerima pelamar ini?',
                        'hired',
                        Colors.green,
                      );
                    },
                    icon: const Icon(Icons.check, size: 16),
                    label: const Text('Terima'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _showConfirmationDialog(
                        application,
                        'Tolak Pelamar',
                        'Apakah Anda yakin ingin menolak pelamar ini?',
                        'reject',
                        Colors.red,
                      );
                    },
                    icon: const Icon(Icons.close, size: 16),
                    label: const Text('Tolak'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade600,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }

  void _showConfirmationDialog(
    DatumGetAplicationTalent application,
    String title,
    String message,
    String status,
    Color color,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message),
              const SizedBox(height: 16),
              Text(
                'Pelamar: ${application.user?.profile?.name ?? 'Tidak tersedia'}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Email: ${application.user?.email ?? 'Tidak tersedia'}',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _updateApplicationStatus(application, status);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
              ),
              child: Text(status == 'hired' ? 'Terima' : 'Tolak'),
            ),
          ],
        );
      },
    );
  }

  void _updateApplicationStatus(
    DatumGetAplicationTalent application,
    String status,
  ) async {
    final data = {
      'status': status,
      'notes': '',
    };

    await context
        .read<ClientDetailJobCardCubit>()
        .changeStatusApplication(application.applicationId!, data);

    // Reload the job data to reflect the changes
    await context.read<ClientDetailJobCardCubit>().loadJobData(widget.jobId);
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
          const Text(': ', style: TextStyle(fontWeight: FontWeight.w500)),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  // Helper methods
  String _buildLocationString(
      List<GetDetailJobsResponseLocationElement>? locations) {
    if (locations == null || locations.isEmpty) return 'Lokasi tidak tersedia';
    return locations
        .map((loc) => loc.location?.name ?? loc.notes ?? '')
        .where((name) => name.isNotEmpty)
        .join(', ');
  }

  String _buildCategoryString(List<GetDetailJobsResponseCategory>? categories) {
    if (categories == null || categories.isEmpty) return 'Tidak ada kategori';
    return categories
        .map((cat) => cat.name ?? '')
        .where((name) => name.isNotEmpty)
        .join(', ');
  }

  String _buildSalaryRange(List<GetDetailJobsResponseRole>? roles) {
    if (roles == null || roles.isEmpty) return 'Tidak disebutkan';
    final role = roles.first;

    final paymentModerasi = double.tryParse(role.paymentModerasi ?? '0') ?? 0;

    if (paymentModerasi > 0) {
      return _formatCurrency(role.paymentModerasi);
    } else {
      return _formatCurrency(role.paymentAmount);
    }
  }

  String _formatCurrency(String? amount) {
    if (amount == null || amount.isEmpty) return 'IDR 0';
    final numericAmount = double.tryParse(amount)?.toInt() ?? 0;
    return 'IDR ${numericAmount.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        )}';
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'Tidak tersedia';
    return '${date.day}/${date.month}/${date.year}';
  }

  void _showContactOptions(DatumGetAplicationTalent application) {
    final user = application.user;
    final profile = user?.profile;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Kontak ${profile?.name ?? 'Talent'}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.green),
              title: const Text('Telepon'),
              subtitle: Text(profile?.phone ?? 'Tidak tersedia'),
              onTap: () {
                // Implement phone call
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.blue),
              title: const Text('Email'),
              subtitle: Text(user?.email ?? 'Tidak tersedia'),
              onTap: () {
                // Implement email
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.message, color: Colors.orange),
              title: const Text('WhatsApp'),
              subtitle: Text(profile?.phone ?? 'Tidak tersedia'),
              onTap: () {
                // Implement WhatsApp
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
