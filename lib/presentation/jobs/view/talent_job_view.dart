import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../lib.dart';
import '../../auth_screen/auth_bottom_sheet.dart';

class TalentJobView extends StatefulWidget {
  const TalentJobView({super.key});

  @override
  _TalentJobViewState createState() => _TalentJobViewState();
}

class _TalentJobViewState extends State<TalentJobView> {
  final currencyFormat =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

  String selectedCategory = 'Semua';
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    // Fetch talent jobs when widget initializes
    context.read<JobsCubit>().getTalentJobs();
    context.read<JobsCubit>().getCategories();
  }

  List<Map<String, dynamic>> get filteredJobs {
    final talentJobs = context.read<JobsCubit>().state.talentJobs?.data ?? [];

    return talentJobs
        .where((job) {
          final matchCategory = selectedCategory == 'Semua' ||
              (job.categories?.any((cat) => cat.name == selectedCategory) ??
                  false);
          final matchSearch =
              job.title?.toLowerCase().contains(searchQuery.toLowerCase()) ??
                  false;
          return matchCategory && matchSearch;
        })
        .map((job) => {
              'id': job.id,
              'category': job.categories?.isNotEmpty == true
                  ? job.categories!.first.name ?? 'General'
                  : 'General',
              'title': job.title ?? '',
              'company': job.client?.email ??
                  'Unknown Client', // Ganti dengan client email
              'location': job.locations?.isNotEmpty == true
                  ? job.locations!.first.location?.name ?? 'Remote'
                  : 'Remote',
              'duration': job.schedules?.isNotEmpty == true
                  ? _formatDuration(job.schedules!.first)
                  : 'Fleksibel',
              'deadline': job.schedules?.isNotEmpty == true
                  ? DateFormat('dd MMM yyyy')
                      .format(job.schedules!.first.endTime!)
                  : 'TBD',
              'salaryMin': job.roles?.isNotEmpty == true
                  ? _parsePayment(job.roles!.first.paymentModerasi)
                  : 0,
              'level': 'Any Level', // Hardcode
              'applicants': job.totalApplications ?? 0,
              'views': job.views ?? 0,
              'rating': 4.5, // Hardcode
              'status': job.status ?? 'active',
            })
        .toList();
  }

  String _formatDuration(ScheduleGetTalentJobsResponse schedule) {
    if (schedule.startTime != null && schedule.endTime != null) {
      final start = DateFormat('HH:mm').format(schedule.startTime!);
      final end = DateFormat('HH:mm').format(schedule.endTime!);
      return '$start - $end';
    }
    return schedule.scheduleType ?? 'Fleksibel';
  }

  double _parsePayment(String? payment) {
    if (payment == null) return 0;
    // Remove non-numeric characters and parse
    final numStr = payment.replaceAll(RegExp(r'[^0-9.]'), '');
    return double.tryParse(numStr) ?? 0;
  }

  List<String> get categories {
    final categoriesData =
        context.read<JobsCubit>().state.categories?.data ?? [];
    final categoryNames = categoriesData.map((cat) => cat.name ?? '').toList();
    return ['Semua', ...categoryNames];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<JobsCubit, JobsState>(
        builder: (context, state) {
          return Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 16, right: 16, bottom: 16),
                color: Color(0xffFF6739),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_back, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text('Daftar Pekerjaan',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(
                        '📍 Area: ${context.talentProfile?.data?.profile?.location?.name ?? 'Unknown'}',
                        style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text('Terbaru'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Search bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari pekerjaan...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onChanged: (value) => setState(() => searchQuery = value),
                ),
              ),

              // Filter chips
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isSelected = selectedCategory == category;
                    return ChoiceChip(
                      label: Text(
                        category,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: const Color(0xffFF6739),
                      backgroundColor: Colors.grey[200],
                      onSelected: (_) {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              // Job List
              Expanded(
                child: state.talentJobs == null
                    ? const Center(child: CircularProgressIndicator())
                    : filteredJobs.isEmpty
                        ? const Center(
                            child: Text('Tidak ada pekerjaan ditemukan.'))
                        : ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: filteredJobs.length,
                            itemBuilder: (context, index) {
                              final job = filteredJobs[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Chip(
                                          label: Text(job['category']),
                                          backgroundColor:
                                              Colors.orange.withOpacity(0.2),
                                          labelStyle: const TextStyle(
                                              color: Colors.orange),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            side: BorderSide(
                                                color: Colors.orange
                                                    .withOpacity(0.5)),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          job['title'],
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(job['company']),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on,
                                                size: 16),
                                            const SizedBox(width: 4),
                                            Expanded(
                                                child: Text(job['location'])),
                                            const SizedBox(width: 12),
                                            const Icon(Icons.access_time,
                                                size: 16),
                                            const SizedBox(width: 4),
                                            Text(job['duration']),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            const Icon(Icons.calendar_today,
                                                size: 16),
                                            const SizedBox(width: 4),
                                            Text(
                                                'Deadline: ${job['deadline']}'),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Text(
                                              currencyFormat
                                                  .format(job["salaryMin"]),
                                              style: const TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Spacer(),
                                            Chip(label: Text(job['level'])),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            const Icon(Icons.person_outline),
                                            const SizedBox(width: 4),
                                            Text(
                                                "${job["applicants"]} pelamar"),
                                            const SizedBox(width: 12),
                                            const Icon(
                                                Icons.visibility_outlined),
                                            const SizedBox(width: 4),
                                            Text("${job["views"]} views"),
                                            const SizedBox(width: 12),
                                            const Icon(Icons.star,
                                                color: Colors.orange),
                                            const SizedBox(width: 4),
                                            Text(job['rating']
                                                .toStringAsFixed(1)),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: ElevatedButton(
                                                onPressed: () async {
                                                  final talentJobs = context
                                                          .read<JobsCubit>()
                                                          .state
                                                          .talentJobs
                                                          ?.data ??
                                                      [];
                                                  final currentJob = talentJobs
                                                      .firstWhere((j) =>
                                                          j.id == job['id']);

                                                  if (currentJob
                                                          .roles?.isNotEmpty ==
                                                      true) {
                                                    final roleId = currentJob
                                                        .roles!.first.id;
                                                    final jobId = job['id'];

                                                    if (roleId != null &&
                                                        jobId != null) {
                                                      // Tampilkan autentikasi fingerprint/PIN
                                                      final authenticated =
                                                          await showModalBottomSheet<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                isScrollControlled:
                                                                    true,
                                                                isDismissible:
                                                                    false,
                                                                enableDrag:
                                                                    false,
                                                                builder: (ctx) =>
                                                                    AuthBottomSheet(),
                                                              ) ??
                                                              false;

                                                      if (authenticated) {
                                                        // Jika sukses autentikasi, baru apply job
                                                        await context
                                                            .read<JobsCubit>()
                                                            .talentApplyJob(
                                                                roleId, jobId);
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                              content: Text(
                                                                  'Verifikasi gagal. Tidak dapat apply job.')),
                                                        );
                                                      }
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Data job tidak lengkap')),
                                                      );
                                                    }
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Tidak ada role tersedia')),
                                                    );
                                                  }
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xffFF6739),
                                                  foregroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Text('Apply Now'),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            OutlinedButton(
                                              onPressed: () {
                                                router.push(
                                                    TalentDetailJobCardRoute(
                                                  jobId: job['id'] ?? '',
                                                ));
                                              },
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                              child: const Text('Detail'),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
              ),
            ],
          );
        },
      ),
    );
  }
}
