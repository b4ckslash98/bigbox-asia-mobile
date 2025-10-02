import 'package:bigbox_asia/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/auth_screen/auth_bottom_sheet.dart';

class JobsCardAdmin extends StatelessWidget {
  final Map<String, dynamic> job;
  final String idJobs;
  const JobsCardAdmin({super.key, required this.job, required this.idJobs});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status + Menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatusBadge(job['status']),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (String selectedOption) {
                    _handleJobOption(context, job, selectedOption);
                  },
                  itemBuilder: (BuildContext context) => [
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
                    const PopupMenuItem<String>(
                      value: 'approve',
                      child: Row(
                        children: [
                          Icon(Icons.check_circle,
                              color: Colors.green, size: 18),
                          SizedBox(width: 8),
                          Text('Setuju'),
                        ],
                      ),
                    ),
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
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Judul
            Text(
              job['title'],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),

            // Nama Client
            Row(
              children: [
                const Icon(Icons.apartment, size: 16, color: Colors.red),
                const SizedBox(width: 6),
                Text(job['client'], style: const TextStyle(fontSize: 14)),
                const SizedBox(width: 4),
                const Text('Client', style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 12),

            // Chips: Jenis Job, Asal Talent, Deadline
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _InfoChip(
                  icon: Icons.card_travel,
                  label: 'Jenis Job',
                  value: job['jenisJob'],
                  backgroundColor: const Color(0xFFFFF1F1),
                  iconColor: Colors.red,
                ),
                _InfoChip(
                  icon: Icons.location_on,
                  label: 'Asal Talent',
                  value: job['asalTalent'],
                  backgroundColor: const Color(0xFFE5FAF6),
                  iconColor: Colors.teal,
                ),
                _InfoChip(
                  icon: Icons.calendar_month,
                  label: 'Deadline',
                  value: job['deadline'],
                  backgroundColor: const Color(0xFFFFF4E5),
                  iconColor: Colors.orange,
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Budget dan Moderasi
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5FFF3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.attach_money, color: Colors.green),
                      Text(
                        '${job['budgetFormatted'] ?? 'Rp${job['budget']}'}',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Total Budget ${job['totalTalent']} Talent',
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('ini idnya ${idJobs}');
                      router.push(AdminModerasiBudgetRoute(
                        job: job,
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBEB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'Moderasi Budget',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Followers, Talent, Applied
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _IconCircle(
                    icon: Icons.visibility,
                    count: job['followers'],
                    color: Colors.blue),
                _IconCircle(
                    icon: Icons.person_outline,
                    count: job['talent'],
                    color: Colors.orange),
                _IconCircle(
                    icon: Icons.check_circle_outline,
                    count: job['applied'],
                    color: Colors.orange),
              ],
            ),

            const SizedBox(height: 6),
            if (job['isReview'] == true) ...[
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7E5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.watch_later,
                        size: 16, color: Colors.orange),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Menunggu Review Admin',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                job['createdAt'],
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }

  void _handleJobOption(
      BuildContext context, Map<String, dynamic> job, String option) {
    switch (option) {
      case 'detail':
        router.push(AdminDetailJobCardRoute(jobId: job['id']));
        break;
      case 'approve':
        _showApprovalDialog(context);
        break;
      case 'reject':
        _showRejectionDialog(context);
        break;
    }
  }

  void _showApprovalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Konfirmasi Persetujuan'),
          content:
              Text('Apakah Anda yakin ingin menyetujui job "${job['title']}"?'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Tampilkan autentikasi fingerprint/PIN
                final authenticated = await showModalBottomSheet<bool>(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: false,
                      enableDrag: false,
                      builder: (ctx) => AuthBottomSheet(),
                    ) ??
                    false;

                if (authenticated) {
                  Navigator.of(dialogContext)
                      .pop(); // Tutup dialog hanya jika sukses
                  _approveJob(context); // Gunakan context original
                } else {
                  Navigator.of(dialogContext).pop(); // Tutup dialog jika gagal
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Verifikasi gagal. Tidak dapat menyetujui job.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Setujui'),
            ),
          ],
        );
      },
    );
  }

  void _showRejectionDialog(BuildContext context) {
    final TextEditingController reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Konfirmasi Penolakan'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Apakah Anda yakin ingin menolak job "${job['title']}"?'),
              const SizedBox(height: 16),
              TextField(
                controller: reasonController,
                decoration: const InputDecoration(
                  labelText: 'Alasan Penolakan',
                  hintText: 'Masukkan alasan penolakan...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Tampilkan autentikasi fingerprint/PIN
                final authenticated = await showModalBottomSheet<bool>(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: false,
                      enableDrag: false,
                      builder: (ctx) => AuthBottomSheet(),
                    ) ??
                    false;

                if (authenticated) {
                  Navigator.of(dialogContext)
                      .pop(); // Tutup dialog hanya jika sukses
                  _rejectJob(context, reasonController.text);
                } else {
                  Navigator.of(dialogContext).pop(); // Tutup dialog jika gagal
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Verifikasi gagal. Tidak dapat menolak job.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Tolak'),
            ),
          ],
        );
      },
    );
  }

  void _approveJob(BuildContext context) async {
    try {
      // Show loading
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Row(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 16),
              Text('Memproses persetujuan job...'),
            ],
          ),
          duration: Duration(seconds: 2),
        ),
      );

      // Data untuk approve job
      final approvalData = {
        'status': 'publish',
        'status_note': 'Job disetujui oleh admin',
      };

      // Call adminApproveJob from JobsCubit yang sudah tersedia di parent context
      final jobsCubit = context.read<JobsCubit>();
      await jobsCubit.adminApproveJob(idJobs, approvalData);

      // Show success message
      if (context.mounted) {
        _showSuccessMessage(
            context, 'Job "${job['title']}" berhasil disetujui', Colors.green);

        // Refresh data setelah approve
        jobsCubit.getMyJobs();
      }
    } catch (e) {
      // Show error message
      if (context.mounted) {
        _showSuccessMessage(
            context, 'Gagal menyetujui job: ${e.toString()}', Colors.red);
      }
    }
  }

  void _rejectJob(BuildContext context, String reason) async {
    try {
      // Show loading
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Row(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 16),
              Text('Memproses penolakan job...'),
            ],
          ),
          duration: Duration(seconds: 2),
        ),
      );

      // Data untuk reject job
      final rejectionData = {
        'status': 'reject',
        'status_note': reason.isNotEmpty ? reason : 'Job ditolak oleh admin',
      };

      // Call adminApproveJob with reject data
      final jobsCubit = context.read<JobsCubit>();
      await jobsCubit.adminApproveJob(idJobs, rejectionData);

      // Show success message
      if (context.mounted) {
        _showSuccessMessage(
            context, 'Job "${job['title']}" berhasil ditolak', Colors.red);

        // Refresh data setelah reject
        jobsCubit.getMyJobs();
      }
    } catch (e) {
      // Show error message
      if (context.mounted) {
        _showSuccessMessage(
            context, 'Gagal menolak job: ${e.toString()}', Colors.red);
      }
    }
  }

  void _showSuccessMessage(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(16),
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    Color badgeColor;
    Color textColor;
    IconData icon;
    String label;

    switch (status.toLowerCase()) {
      case 'pending':
      case 'in review':
        badgeColor = const Color(0xFFFFF8E1);
        textColor = Colors.orange;
        icon = Icons.access_time;
        label = 'In Review';
        break;
      case 'published':
      case 'publish':
        badgeColor = const Color(0xFFE5FFF3);
        textColor = Colors.green;
        icon = Icons.check_circle;
        label = 'Published';
        break;
      case 'rejected':
      case 'reject':
        badgeColor = const Color(0xFFFFEBEB);
        textColor = Colors.red;
        icon = Icons.cancel;
        label = 'Rejected';
        break;
      case 'cancelled':
      case 'cancel':
        badgeColor = const Color(0xFFE3F2FD);
        textColor = Colors.blue;
        icon = Icons.task_alt;
        label = 'Cancelled';
        break;
      default:
        badgeColor = Colors.grey.shade200;
        textColor = Colors.grey;
        icon = Icons.info;
        label = status;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: textColor),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color backgroundColor;
  final Color iconColor;

  const _InfoChip({
    required this.icon,
    required this.label,
    required this.value,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        margin: const EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
            Row(
              children: [
                Icon(icon, size: 14, color: iconColor),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12),
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

class _IconCircle extends StatelessWidget {
  final IconData icon;
  final int count;
  final Color color;

  const _IconCircle({
    required this.icon,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          radius: 16,
          child: Icon(icon, size: 16, color: color),
        ),
        const SizedBox(height: 4),
        Text(
          '$count',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
