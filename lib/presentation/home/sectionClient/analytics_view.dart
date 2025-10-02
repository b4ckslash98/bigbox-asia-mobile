import 'package:flutter/material.dart';

import '../../../lib.dart';

class AnalyticsView extends StatefulWidget {
  const AnalyticsView({super.key});

  @override
  State<AnalyticsView> createState() => _AnalyticsViewState();
}

class _AnalyticsViewState extends State<AnalyticsView> {
  String _selectedPeriod = '30 Hari Terakhir';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Analytics Dashboard",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                DropdownButton<String>(
                  value: _selectedPeriod,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedPeriod = newValue!;
                    });
                  },
                  items: <String>[
                    '30 Hari Terakhir',
                    '7 Hari Terakhir',
                    'Hari Ini'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1,
              children: [
                StatCardClientAnalytic(
                  value: '0%',
                  label: 'Conversion Rate',
                  icon: Icons.track_changes,
                  iconColor: Colors.blue,
                  subvalue: '+0% dari periode sebelumnya',
                ),
                StatCardClientAnalytic(
                  value: '0%',
                  label: 'Response Rate',
                  icon: Icons.monitor_heart_outlined,
                  iconColor: Colors.green,
                  subvalue: '+0% dari periode sebelumnya',
                ),
                StatCardClientAnalytic(
                  value: '0h',
                  label: 'Avg. Response Time',
                  icon: Icons.access_time,
                  iconColor: Colors.orange,
                  subvalue: '-0h dari periode sebelumnya',
                ),
                StatCardClientAnalytic(
                  value: '0%',
                  label: 'Success Rate',
                  icon: Icons.emoji_events_outlined,
                  iconColor: Colors.purple,
                  subvalue: '+0% dari periode sebelumnya',
                ),
              ],
            ),
            JobPerformanceCard(),
            TalentDistributionCard(),
            TopPerformingJobCard(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
    ;
  }
}

class JobPerformanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Job Performance',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bar_chart, size: 40, color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      'Chart akan ditampilkan di sini',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    Text(
                      'Integrasi dengan library chart diperlukan',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopPerformingJobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Performing Jobs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bar_chart, size: 40, color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      'Chart akan ditampilkan di sini',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    Text(
                      'Belum ada data performa job',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TalentDistributionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Talent Distribution',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.pie_chart, size: 40, color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      'Pie chart akan ditampilkan di sini',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    Text(
                      'Data distribusi talent berdasarkan kategori',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
