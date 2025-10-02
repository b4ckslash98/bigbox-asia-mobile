import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';

class QuickActionClient extends StatelessWidget {
  const QuickActionClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Judul
        Row(
          children: const [
            Icon(Icons.flash_on, color: Colors.blue, size: 18),
            SizedBox(width: 6),
            Text(
              "Aksi Cepat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        // Grid menu
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.5,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _QuickActionItem(
              onTap: () {
                router.push(ClientPostingJobRoute());
              },
              icon: Icons.add,
              title: 'Buat Job baru',
              subtitle: 'Posting hob untuk menemukan talent',
              backgroundColor: Color(0xFFFFF3F1),
              iconColor: Colors.red,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(ClientSearchTalentRoute());
              },
              icon: Icons.remove_red_eye,
              title: 'Cari Talent',
              subtitle: 'Browse talent yang tersedia',
              backgroundColor: Color(0xFFF0FAF5),
              iconColor: Colors.green,
            ),
            _QuickActionItem(
              onTap: () {
                // Menggunakan cubit untuk pindah ke tab Analytics
                context.read<HomeCubit>().goToAnalytics();
              },
              icon: Icons.account_box,
              title: 'Lihat Analytics',
              subtitle: 'Lihat & kelola klien',
              backgroundColor: Color(0xFFF1F8FF),
              iconColor: Colors.blue,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(ClientInvoiceRoute());
              },
              icon: Icons.work_outline,
              title: 'Kelola Invoice',
              subtitle: 'Approval job dari klien',
              backgroundColor: Color(0xFFEFF9FB),
              iconColor: Colors.cyan,
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onTap;
  const _QuickActionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.grey.shade200,
        highlightColor: Color(0xffFF6739).withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        child: DottedBorder(
          options: RoundedRectDottedBorderOptions(
              color: Colors.grey.shade300, radius: Radius.circular(20)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlassContainer(
                  color: iconColor,
                  borderRadius: 8,
                  opacity: 0.28,
                  blurX: 10,
                  blurY: 10,
                  borderWidth: 0,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(icon, color: iconColor, size: 20)),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
