import 'package:flutter/material.dart';

class JobTypeCard extends StatelessWidget {
  const JobTypeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.access_time, // Atau kamu bisa ganti dengan icon lain
                  color: Colors.orange,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  'Jenis Job Diminati Talent',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.trending_up_sharp,
              color: Colors.grey,
            ),
            // Body Message

            const Text(
              textAlign: TextAlign.center,
              'Belum ada data distribusi jenis job',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Data akan muncul ketika ada talent aktif dengan job types yang terdaftar',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),

            // Refresh Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Fungsi untuk refresh data
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  'REFRESH DATA',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
