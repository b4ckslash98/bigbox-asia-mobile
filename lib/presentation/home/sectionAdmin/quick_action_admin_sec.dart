import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../lib.dart';

class QuickActionsAdmin extends StatelessWidget {
  const QuickActionsAdmin({super.key});

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
          childAspectRatio: 1.2,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _QuickActionItem(
              onTap: () {
                router.push(AddAdminRoute());
              },
              icon: Icons.add,
              title: 'Tambah Admin',
              subtitle: 'Buat akun admin baru',
              backgroundColor: Color(0xFFFFF3F1),
              iconColor: Colors.red,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(AddTalentRoute());
              },
              icon: Icons.add,
              title: 'Tambah Talent',
              subtitle: 'Buat akun talent baru',
              backgroundColor: Color(0xFFFFF3F1),
              iconColor: Colors.red,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(UsersRoute());
              },
              icon: Icons.remove_red_eye,
              title: 'Kelola Talent',
              subtitle: 'Lihat & verifikasi talent',
              backgroundColor: Color(0xFFF0FAF5),
              iconColor: Colors.green,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(AdminKelolaClientRoute());
              },
              icon: Icons.account_box,
              title: 'Kelola Klien',
              subtitle: 'Lihat & kelola klien',
              backgroundColor: Color(0xFFF1F8FF),
              iconColor: Colors.blue,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(JobsRoute());
              },
              icon: Icons.work_outline,
              title: 'Kelola Jobs',
              subtitle: 'Approval job dari klien',
              backgroundColor: Color(0xFFEFF9FB),
              iconColor: Colors.cyan,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(AdminInvoiceRoute());
              },
              icon: Icons.receipt_long,
              title: 'Kelola Invoice',
              subtitle: 'Monitor invoice & tagihan',
              backgroundColor: Color(0xFFF9F6FD),
              iconColor: Colors.purple,
            ),
            _QuickActionItem(
              onTap: () {
                router.push(AdminAnnouncementRoute());
              },
              icon: Icons.article_outlined,
              title: 'Pengumuman & Artikel',
              subtitle: 'Tulis pengumuman untuk talent',
              backgroundColor: Color(0xFFFFFBF1),
              iconColor: Colors.orange,
            ),
            _QuickActionItem(
              onTap: () {},
              icon: Icons.notifications_active,
              title: 'Broadcast',
              subtitle: 'Kirim notifikasi massal',
              backgroundColor: Color(0xFFF2FAFF),
              iconColor: Colors.lightBlue,
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
