import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';
import '../cubit/users_cubit.dart';
import '../cubit/users_state.dart';

class HeaderUsers extends StatelessWidget {
  const HeaderUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFEC2323), Color(0xFFFF6B00)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Manajemen Talent',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Kelola data talent BGBox TMS',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Download Button
                  ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: const Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      router.push(AddTalentRoute());
                    },
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Statistik Cards (4 Items) - Dynamic Data
              BlocBuilder<UsersCubit, UsersState>(
                builder: (context, state) {
                  final adminUsers = state.adminUser?.data ?? [];

                  // Calculate statistics
                  final totalUsers = adminUsers.length;
                  final activeUsers = adminUsers
                      .where((user) =>
                          user.isActive == true &&
                          user.verificationStatus?.toUpperCase() == 'APPROVED')
                      .length;
                  final pendingUsers = adminUsers
                      .where((user) =>
                          user.verificationStatus?.toUpperCase() == 'IN_REVIEW')
                      .length;
                  final inactiveUsers =
                      adminUsers.where((user) => user.isActive == false).length;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatCard(
                        icon: Icons.group_outlined,
                        iconColor: Colors.grey,
                        count: totalUsers.toString(),
                        label: 'Total',
                      ),
                      _buildStatCard(
                        icon: Icons.person_outline,
                        iconColor: Colors.green,
                        count: activeUsers.toString(),
                        label: 'Aktif',
                      ),
                      _buildStatCard(
                        icon: Icons.access_time_outlined,
                        iconColor: Colors.orange,
                        count: pendingUsers.toString(),
                        label: 'Review',
                      ),
                      _buildStatCard(
                        icon: Icons.person_off_outlined,
                        iconColor: Colors.red,
                        count: inactiveUsers.toString(),
                        label: 'Nonaktif',
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
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
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.2,
          ),
        ),
        child: Column(
          children: [
            Text(
              count,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
