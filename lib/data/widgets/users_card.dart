import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../lib.dart';
import '../../presentation/users/cubit/users_cubit.dart';

class UserCard extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top section with avatar, name, and status
          Row(
            children: [
              // Avatar
              _buildAvatar(),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name and status row
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            user['name']?.toString() ?? 'Unknown User',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        _buildStatusBadge(),
                        const SizedBox(width: 8),
                        PopupMenuButton<String>(
                          borderRadius: BorderRadius.circular(20),
                          icon: const Icon(Icons.more_vert),
                          onSelected: (String selectedOption) {
                            _handleUserOption(context, user, selectedOption);
                          },
                          itemBuilder: (BuildContext context) =>
                              _buildMenuItems(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // "Belum diisi" with red dot and email
                    _buildEmailSection(),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Phone number
          if (user['phone'] != null && user['phone'].toString().isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.phone,
                    size: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    user['phone'].toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

          // Location
          if (user['location'] != null &&
              user['location'].toString().isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    user['location'].toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

          // Casting info / range usia
          _buildCastingInfo(),

          const SizedBox(height: 16),

          // Bottom section with rating and join date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Rating and jobs
              _buildRatingSection(),
              // Join date
              _buildJoinDate(),
            ],
          ),
        ],
      ),
    );
  }

  List<PopupMenuEntry<String>> _buildMenuItems() {
    final verificationStatus =
        user['verificationStatus']?.toString().toLowerCase() ?? 'in_review';
    final isActive = user['isActive'] == true;

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

    // Show approve option if not already approved
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

    // Show reject option if not already rejected
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

    // Show activate/deactivate option
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

  Widget _buildAvatar() {
    final avatarUrl = user['avatarUrl']?.toString();
    final name = user['name']?.toString() ?? 'U';

    if (avatarUrl != null && avatarUrl.isNotEmpty) {
      return CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(avatarUrl),
        onBackgroundImageError: (exception, stackTrace) {
          // Fallback to initials if image fails to load
        },
        child: null,
      );
    } else {
      return CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xffFF6739),
        child: Text(
          name.length >= 2
              ? name.substring(0, 2).toUpperCase()
              : name.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }

  Widget _buildStatusBadge() {
    final status = user['status']?.toString() ?? 'Nonaktif';
    Color badgeColor;

    switch (status.toLowerCase()) {
      case 'aktif':
        badgeColor = Colors.green;
        break;
      case 'review':
        badgeColor = Colors.orange;
        break;
      case 'ditolak':
        badgeColor = Colors.red;
        break;
      default:
        badgeColor = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: badgeColor,
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
    );
  }

  Widget _buildEmailSection() {
    final email = user['email']?.toString() ?? 'email@example.com';

    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          'Belum diisi',
          style: TextStyle(
            fontSize: 12,
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            email,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildCastingInfo() {
    final range = user['range']?.toString();
    final position = user['position']?.toString();

    if (range != null && range.isNotEmpty) {
      String castingInfo = range;
      if (position != null && position.isNotEmpty) {
        castingInfo += ' • $position';
      }

      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            const Icon(
              Icons.work_outline,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                castingInfo,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildRatingSection() {
    final rating = _parseDouble(user['rating']) ?? 0.0;
    final jobCount = _parseInt(user['jobs']) ?? 0;

    return Row(
      children: [
        // Star rating
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating ? Icons.star : Icons.star_border,
              color: Colors.amber,
              size: 16,
            );
          }),
        ),
        const SizedBox(width: 8),
        Text(
          rating.toStringAsFixed(1),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$jobCount jobs',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildJoinDate() {
    final date = user['date']?.toString();

    if (date != null && date.isNotEmpty) {
      return Text(
        'Bergabung $date',
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      );
    }

    return const SizedBox.shrink();
  }

  // Helper methods for null-safe parsing
  double? _parseDouble(dynamic value) {
    if (value == null) return null;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value);
    return null;
  }

  int? _parseInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }
}

void _handleUserOption(
    BuildContext context, Map<String, dynamic> user, String option) {
  final usersCubit = context.read<UsersCubit>();
  final userId = user['id']?.toString() ?? '';
  final userEmail = user['email']?.toString() ?? '';

  switch (option) {
    case 'detail':
      router.push(AdminDetailUsersCardRoute(
        talentId: userId,
      ));
      break;
    case 'approve':
      _showConfirmationDialog(
        context,
        title: 'Setujui Talent',
        message: 'Apakah Anda yakin ingin menyetujui talent ${user['name']}?',
        confirmText: 'Setujui',
        confirmColor: Colors.green,
        onConfirm: () {
          usersCubit.changeStatusTalent(
            userId,
            userEmail,
            true, // isActive
            'approved', // verificationStatus
            '', // verificationNote
          );
          _showSuccessMessage(
              context, 'Talent berhasil disetujui', Colors.green);
        },
      );
      break;
    case 'reject':
      _showRejectDialog(context, user, usersCubit);
      break;
    case 'activate':
      _showConfirmationDialog(
        context,
        title: 'Aktifkan Talent',
        message: 'Apakah Anda yakin ingin mengaktifkan talent ${user['name']}?',
        confirmText: 'Aktifkan',
        confirmColor: Colors.blue,
        onConfirm: () {
          usersCubit.changeStatusTalent(
            userId,
            userEmail,
            true, // isActive
            user['verificationStatus']?.toString() ??
                'IN_REVIEW', // keep current verification status
            user['verificationNote']?.toString() ?? '', // keep current note
          );
          _showSuccessMessage(
              context, 'Talent berhasil diaktifkan', Colors.blue);
        },
      );
      break;
    case 'deactivate':
      _showConfirmationDialog(
        context,
        title: 'Nonaktifkan Talent',
        message:
            'Apakah Anda yakin ingin menonaktifkan talent ${user['name']}?',
        confirmText: 'Nonaktifkan',
        confirmColor: Colors.orange,
        onConfirm: () {
          usersCubit.changeStatusTalent(
            userId,
            userEmail,
            false, // isActive
            user['verificationStatus']?.toString() ??
                'IN_REVIEW', // keep current verification status
            user['verificationNote']?.toString() ?? '', // keep current note
          );
          _showSuccessMessage(
              context, 'Talent berhasil dinonaktifkan', Colors.orange);
        },
      );
      break;
  }
}

void _showConfirmationDialog(
  BuildContext context, {
  required String title,
  required String message,
  required String confirmText,
  required Color confirmColor,
  required VoidCallback onConfirm,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
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
      );
    },
  );
}

void _showRejectDialog(
  BuildContext context,
  Map<String, dynamic> user,
  UsersCubit usersCubit,
) {
  final noteController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Tolak Talent'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Apakah Anda yakin ingin menolak talent ${user['name']}?'),
            const SizedBox(height: 16),
            const Text(
              'Alasan penolakan:',
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
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              final note = noteController.text.trim();
              if (note.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Alasan penolakan harus diisi'),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }

              Navigator.of(context).pop();
              usersCubit.changeStatusTalent(
                user['id']?.toString() ?? '',
                user['email']?.toString() ?? '',
                false, // isActive
                'rejected', // verificationStatus
                note, // verificationNote
              );
              _showSuccessMessage(
                  context, 'Talent berhasil ditolak', Colors.red);
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
      );
    },
  );
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
