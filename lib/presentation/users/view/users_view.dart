import 'package:bigbox_asia/presentation/users/section/user_list_sec.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';
import '../cubit/cubit.dart';

@RoutePage()
class UsersView extends StatefulWidget implements AutoRouteWrapper {
  const UsersView({super.key});

  @override
  State<UsersView> createState() => _UsersViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UsersCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _UsersViewState extends State<UsersView> {
  @override
  void initState() {
    super.initState();
    context.read<UsersCubit>().fetchAdminTalent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderUsers(),
          Expanded(
            child: BlocBuilder<UsersCubit, UsersState>(
              builder: (context, state) {
                final adminUsers = state.adminUser?.data ?? [];

                if (adminUsers.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people_outline,
                          size: 64,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Belum ada data talent',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                // Convert admin user data to the format expected by UserListWithFilter
                final users = adminUsers.map((adminUser) {
                  final profile = adminUser.profile;
                  return {
                    'id': adminUser.id ?? '',
                    'email': adminUser.email ?? '',
                    'name': profile?.name ?? 'Unknown',
                    'phone': profile?.phone ?? '-',
                    'location': profile?.location?.name ?? '-',
                    'range': _getAgeRange(profile),
                    'position': '${profile?.age ?? 0}th',
                    'jobs': profile?.experiences?.length ?? 0,
                    'date': adminUser.createdAt != null
                        ? _formatDate(adminUser.createdAt!)
                        : '-',
                    'status': _getStatusText(
                        adminUser.isActive, adminUser.verificationStatus),
                    'avatarUrl': profile?.photoProfile ?? '',
                    'isActive': adminUser.isActive ?? false,
                    'verificationStatus': _getVerificationStatusString(
                        adminUser.verificationStatus),
                    'verificationNote':
                        _getVerificationNoteString(adminUser.verificationNote),
                    // Additional fields for UserCard
                    'username': profile?.username ?? '-',
                    'gender': profile?.gender ?? '-',
                    'height': profile?.height?.toString() ?? '-',
                    'weight': profile?.weight?.toString() ?? '-',
                    'instagramFollower': profile?.instagramFollower ?? '-',
                  };
                }).toList();

                return UserListWithFilter(users: users);
              },
            ),
          ),
        ],
      ),
    );
  }

  String _getAgeRange(ProfileGetAdminUser? profile) {
    if (profile?.ageCastingMin != null && profile?.ageCastingMax != null) {
      return '${profile!.ageCastingMin}-${profile.ageCastingMax} tahun';
    } else if (profile?.age != null) {
      return '${profile!.age} tahun';
    }
    return '-';
  }

  String _formatDate(DateTime date) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
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

  String _getVerificationStatusString(String? status) {
    switch (status?.toUpperCase()) {
      case 'APPROVED':
        return 'approved';
      case 'IN_REVIEW':
        return 'in_review';
      case 'REJECTED':
        return 'rejected';
      default:
        return 'in_review';
    }
  }

  String _getVerificationNoteString(String? note) {
    if (note == null || note.isEmpty) {
      return '';
    }
    return note;
  }
}
