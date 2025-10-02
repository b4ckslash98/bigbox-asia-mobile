import 'package:bigbox_asia/presentation/home/sectionClient/quick_action_client_sec.dart';
import 'package:bigbox_asia/presentation/home/sectionClient/statcard_client_sec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';

class OverviewView extends StatefulWidget {
  const OverviewView({super.key});

  @override
  State<OverviewView> createState() => _OverviewViewState();
}

class _OverviewViewState extends State<OverviewView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            // Extract data from state
            final totalJobs = state.clientTotalJobs?.data?.toString() ?? '0';
            final totalApplications =
                state.clientTotalApplication?.data?.toString() ?? '0';

            return Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.1,
                  children: [
                    StatcardClient(
                      isGrowth: int.parse(totalJobs) > 0,
                      value: totalJobs,
                      label: 'Total Job',
                      icon: Icons.people_outline,
                      badgeText: int.parse(totalJobs) > 0
                          ? '${((int.parse(totalJobs) / 10) * 100).toStringAsFixed(0)}%'
                          : '0%',
                      badgeColor: Color(0xffFF6739),
                      backgroundGradient: [
                        Color(0xFFE9FFF5),
                        Color(0xFFF5FFFA)
                      ],
                      subvalue: 'Pekerjaan selesai',
                    ),
                    StatcardClient(
                      isGrowth: true,
                      value: '4',
                      label: 'Talent Aktif',
                      icon: Icons.pending_actions,
                      badgeText: '300%',
                      badgeColor: Colors.green,
                      backgroundGradient: [
                        Color(0xFFFFF3EB),
                        Color(0xFFFFF8F2)
                      ],
                      subvalue: 'Talent baru',
                    ),
                    StatcardClient(
                      isGrowth: int.parse(totalApplications) > 0,
                      value: totalApplications,
                      label: 'Aplikasi Masuk',
                      icon: Icons.check_circle_outlined,
                      badgeText: int.parse(totalApplications) > 0
                          ? '${((int.parse(totalApplications) / 5) * 100).toStringAsFixed(0)}%'
                          : '0%',
                      badgeColor: Colors.blue,
                      backgroundGradient: [
                        Color(0xFFE6F6FF),
                        Color(0xFFF2FAFF)
                      ],
                      subvalue: int.parse(totalApplications) > 0
                          ? 'Ada aplikasi baru'
                          : 'Tidak ada aplikasi',
                    ),
                    StatcardClient(
                      isGrowth: false,
                      value: '0',
                      label: 'Jobs Selesai',
                      icon: Icons.access_time_outlined,
                      badgeText: '0%',
                      badgeColor: Colors.yellow,
                      backgroundGradient: [
                        Color(0xFFF3E5FF),
                        Color(0xFFF9F0FF)
                      ],
                      subvalue: 'Jobs selesai',
                    ),
                  ],
                ),
                QuickActionClient(),
                // Header
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Jobs Terbaru',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Lihat Semua',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Judul & Status
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Casting Iklan Bumbu Masak',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Text(
                                        'Aktif',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),

                                // Tag kategori
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(Icons.edit, size: 14),
                                      SizedBox(width: 4),
                                      Text(
                                        'iklan',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 12),

                                // Gaji
                                Row(
                                  children: const [
                                    Icon(Icons.attach_money,
                                        color: Colors.green),
                                    SizedBox(width: 4),
                                    Text(
                                      'Rp 3.000.000 - Rp 3.500.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),

                                // Aplikasi & tanggal - using dynamic data
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person_outline, size: 16),
                                        SizedBox(width: 4),
                                        Text('$totalApplications aplikasi'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today_outlined,
                                            size: 16),
                                        SizedBox(width: 4),
                                        Text('24 Jul'),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                const Divider(),
                                const Text(
                                  'Klik untuk lihat aplikasi masuk',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Aplikasi Terbaru',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Lihat Semua',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Icon(
                            Icons.people_outline,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          textAlign: TextAlign.center,
                          int.parse(totalApplications) > 0
                              ? 'Ada $totalApplications aplikasi masuk'
                              : 'Belum ada aplikasi masuk',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Text(
                          textAlign: TextAlign.center,
                          int.parse(totalApplications) > 0
                              ? 'Anda memiliki beberapa talent yang tertarik dengan job Anda'
                              : 'Aplikasi akan muncul ketika talent melamar job Anda',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
