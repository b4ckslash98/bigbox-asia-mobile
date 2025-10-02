import 'package:flutter/material.dart';

import '../../../lib.dart';

import 'package:flutter/material.dart';
import '../../../lib.dart';
import 'package:intl/intl.dart';

class PekerjaanDanBudgetSection extends StatelessWidget {
  final DataGetTalentProfile? profileTalent;
  PekerjaanDanBudgetSection({super.key, this.profileTalent});

  @override
  Widget build(BuildContext context) {
    final categories = profileTalent?.interestCategories ?? [];

    return Card(
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Icon(Icons.card_giftcard, color: Colors.orange),
            title: Text('Jenis Pekerjaan yang Diminati',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: categories.isEmpty
                ? const Text('Belum ada data kategori yang diminati.')
                : Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: categories.map((item) {
                      return Chip(
                        backgroundColor: Colors.orange.shade100,
                        label: Text(item.categories?.name ?? '-'),
                      );
                    }).toList(),
                  ),
          ),
          const SizedBox(height: 24),
          const ListTile(
            leading: Icon(Icons.show_chart, color: Colors.redAccent),
            title: Text('Budget yang Diharapkan',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(
              'Budget yang diharapkan berdasarkan jenis pekerjaan yang diminati',
            ),
          ),
          ...categories.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.work, color: Color(0xffFF6739)),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        item.categories?.name ?? '-',
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      '${NumberFormat.currency(locale: "id", symbol: "Rp", decimalDigits: 0).format(item.budgetMin ?? 0)}'
                      ' - '
                      '${NumberFormat.currency(locale: "id", symbol: "Rp", decimalDigits: 0).format(item.budgetMax ?? 0)}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              color: Color(0xFFE0F7FA),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(Icons.lightbulb, color: Colors.amber),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Budget dapat disesuaikan berdasarkan kompleksitas project dan durasi pekerjaan',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SIMWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.directions_car, color: Colors.orange), // Car Icon
                SizedBox(width: 10),
                Text(
                  'Kepemilikan SIM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SIM C (Motor)', style: TextStyle(fontSize: 16)),
                Text('Tidak', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SIM A (Mobil)', style: TextStyle(fontSize: 16)),
                Text('Tidak', style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
