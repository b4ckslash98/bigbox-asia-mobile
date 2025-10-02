import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../lib.dart';
import '../../auth_screen/auth_bottom_sheet.dart';

class JobAvailableSection extends StatelessWidget {
  const JobAvailableSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final jobs =
            _mapTalentJobsToDisplayFormat(state.talentJobs?.data ?? []);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title + Lokasi + Refresh
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job Tersedia',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Casting terbaru untuk Anda',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Refresh data
                      context.read<HomeCubit>().getTalentJobs();
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.location_pin,
                            color: Colors.red, size: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            // ignore: unnecessary_string_interpolations
                            '${context.talentProfile?.data?.profile?.location?.name ?? 'Lokasi Anda'}',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                        const Text(
                          'Refresh',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.orange,
                              fontWeight: FontWeight.w600),
                        ),
                        const Icon(Icons.chevron_right, color: Colors.orange),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Info lokasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            size: 16, color: Colors.blue),
                        SizedBox(width: 4),
                        Text('Menampilkan jobs di area:'),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      context.talentProfile?.data?.profile?.location?.name ??
                          'Lokasi Anda',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Jobs disesuaikan dengan domisili Anda',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Job Cards - Horizontal scroll
            SizedBox(
              height: 350,
              child: state.talentJobs == null
                  ? const Center(child: CircularProgressIndicator())
                  : jobs.isEmpty
                      ? const Center(
                          child: Text(
                            'Tidak ada job tersedia',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      : ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          scrollDirection: Axis.horizontal,
                          itemCount: jobs.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(width: 16),
                          itemBuilder: (context, index) {
                            final job = jobs[index];
                            return SizedBox(
                              width: 360,
                              child: JobCardWidget(
                                title: job['title'],
                                client: job['client'],
                                location: job['location'],
                                postedDate: job['postedDate'],
                                deadlineDate: job['deadlineDate'],
                                price: job['price'],
                                level: job['level'],
                                applicants: job['applicants'],
                                views: job['views'],
                                rating: job['rating'],
                                onApply: () => _handleApplyJob(context, job),
                                onDetail: () => _handleDetailJob(context, job),
                              ),
                            );
                          },
                        ),
            ),
          ],
        );
      },
    );
  }

  List<Map<String, dynamic>> _mapTalentJobsToDisplayFormat(
      List<DatumGetTalentJobsResponse> talentJobs) {
    final currencyFormat =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

    return talentJobs
        .map((job) => {
              'id': job.id,
              'title': job.title ?? 'No Title',
              'client': 'BigBox Company', // Hardcode karena tidak ada di model
              'location': job.locations?.isNotEmpty == true
                  ? job.locations!.first.notes ?? 'Remote'
                  : 'Remote',
              'postedDate': job.createdAt != null
                  ? DateFormat('dd MMM').format(job.createdAt!)
                  : 'TBD',
              'deadlineDate': job.createdAt != null
                  ? DateFormat('dd MMM')
                      .format(job.createdAt!.add(const Duration(days: 14)))
                  : 'TBD',
              'price': job.roles?.isNotEmpty == true
                  ? _formatPayment(
                      job.roles!.first.paymentAmount, currencyFormat)
                  : 'Negosiasi',
              'level': 'Any Level', // Hardcode karena tidak ada di model
              'applicants': job.totalApplications ?? 0,
              'views': job.views ?? 0,
              'rating': 4.5, // Hardcode karena tidak ada di model
              'jobData': job, // Simpan data asli untuk apply
            })
        .toList();
  }

  String _formatPayment(String? payment, NumberFormat formatter) {
    if (payment == null) return 'Negosiasi';

    final numStr = payment.replaceAll(RegExp(r'[^0-9.]'), '');
    final amount = double.tryParse(numStr) ?? 0;

    if (amount > 0) {
      final minAmount = amount;
      final maxAmount = amount * 1.5;
      return '${formatter.format(minAmount)} - ${formatter.format(maxAmount)}';
    }

    return payment;
  }

  void _handleApplyJob(BuildContext context, Map<String, dynamic> job) async {
    final jobData = job['jobData'] as DatumGetTalentJobsResponse;

    if (jobData.roles?.isNotEmpty == true) {
      final roleId = jobData.roles!.first.id;
      final jobId = jobData.id;

      if (roleId != null && jobId != null) {
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
          context.read<HomeCubit>().talentApplyJob(roleId, jobId);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Verifikasi gagal. Tidak dapat apply job.')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data job tidak lengkap')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tidak ada role tersedia')),
      );
    }
  }

  void _handleDetailJob(BuildContext context, Map<String, dynamic> job) {
    // Navigate to detail page
    router.push(TalentDetailJobCardRoute(
      jobId: job['id'] ?? '',
    ));
  }
}
