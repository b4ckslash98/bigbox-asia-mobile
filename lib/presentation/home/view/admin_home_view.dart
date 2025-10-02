import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';

class AdminHomeContent extends StatelessWidget {
  const AdminHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              HeaderAdmin(),
              // Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1,
                      children: [
                        // Total Talent Card
                        StatcardAdmin(
                          isGrowth: true,
                          value:
                              state.adminTotalTalent?.data?.toString() ?? '0',
                          label: 'Total Talent',
                          icon: Icons.people_outline,
                          badgeText: '233%',
                          badgeColor: const Color(0xffFF6739),
                          backgroundGradient: const [
                            Color(0xFFE9FFF5),
                            Color(0xFFF5FFFA)
                          ],
                          subvalue:
                              '${state.adminTotalTalent?.data ?? 0} talent terdaftar',
                          isLoading: state.adminTotalTalent == null,
                        ),

                        // Total Client Card
                        StatcardAdmin(
                          isGrowth: true,
                          value:
                              state.adminTotalClient?.data?.toString() ?? '0',
                          label: 'Total Klien',
                          icon: Icons.business_outlined,
                          badgeText: '300%',
                          badgeColor: Colors.green,
                          backgroundGradient: const [
                            Color(0xFFFFF3EB),
                            Color(0xFFFFF8F2)
                          ],
                          subvalue:
                              '${state.adminTotalClient?.data ?? 0} klien terdaftar',
                          isLoading: state.adminTotalClient == null,
                        ),

                        // Total Job Card
                        StatcardAdmin(
                          isGrowth: false,
                          value: state.adminTotalJob?.data?.toString() ?? '0',
                          label: 'Total Job',
                          icon: Icons.work_outline,
                          badgeText: '0%',
                          badgeColor: Colors.blue,
                          backgroundGradient: const [
                            Color(0xFFE6F6FF),
                            Color(0xFFF2FAFF)
                          ],
                          subvalue:
                              '${state.adminTotalJob?.data ?? 0} job tersedia',
                          isLoading: state.adminTotalJob == null,
                        ),

                        // Total Job Pending Card
                        StatcardAdmin(
                          isGrowth: true,
                          value: state.adminTotalJobPending?.data?.toString() ??
                              '0',
                          label: 'Job Pending',
                          icon: Icons.pending_actions,
                          badgeText: '0%',
                          badgeColor: Colors.orange,
                          backgroundGradient: const [
                            Color(0xFFF3E5FF),
                            Color(0xFFF9F0FF)
                          ],
                          subvalue:
                              '${state.adminTotalJobPending?.data ?? 0} perlu review',
                          isLoading: state.adminTotalJobPending == null,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                      child: Card(elevation: 1, child: WeeklyActivityChart()),
                    ),
                    JobTypeCard(),
                    QuickActionsAdmin(),
                    TaskPendingWidget(),
                    RecentActivityWidget(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
