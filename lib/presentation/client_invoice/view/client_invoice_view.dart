import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ClientInvoiceView extends StatefulWidget implements AutoRouteWrapper {
  const ClientInvoiceView({super.key});

  @override
  State<ClientInvoiceView> createState() => _ClientInvoiceViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    // TODO: implement wrappedRoute
    return this;
  }
}

class _ClientInvoiceViewState extends State<ClientInvoiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Invoice & Tagihan'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'Terakhir diperbarui:\n11/7/2025, 08.48.20',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.right,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kelola tagihan dan\npembayaran proyek Anda',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),

            // Status Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatusCard(
                  color: Colors.orange,
                  icon: Icons.hourglass_bottom,
                  title: 'BELUM DIBAYAR',
                  count: 0,
                  amount: 'Rp 0',
                ),
                _buildStatusCard(
                  color: Colors.green,
                  icon: Icons.check_circle,
                  title: 'SUDAH DIBAYAR',
                  count: 0,
                  amount: 'Rp 0',
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildStatusCard(
              color: Colors.pinkAccent,
              icon: Icons.error,
              title: 'TERLAMBAT',
              count: 0,
              amount: 'Segera bayar!',
              fullWidth: true,
            ),

            const SizedBox(height: 20),

            // Filter dropdown
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.filter_alt_outlined, size: 20),
                  const SizedBox(width: 10),
                  const Text('Filter Status:'),
                  const Spacer(),
                  DropdownButton<String>(
                    value: 'Semua Status',
                    underline: Container(),
                    items: const [
                      DropdownMenuItem(
                        value: 'Semua Status',
                        child: Text('Semua Status'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Table Header
            Row(
              children: const [
                Expanded(
                    child: Text('INVOICE DETAILS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12))),
                Expanded(
                    child: Text('JOB & TALENT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12))),
                Expanded(
                    child: Text('AMOUNT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12))),
                Expanded(
                    child: Text('STATUS & DUE DATE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12))),
              ],
            ),

            const Divider(height: 20),

            // Empty State
            Center(
              child: Column(
                children: [
                  const Icon(Icons.credit_card, size: 60, color: Colors.orange),
                  const SizedBox(height: 10),
                  const Text(
                    'Belum ada invoice',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard({
    required Color color,
    required IconData icon,
    required String title,
    required int count,
    required String amount,
    bool fullWidth = false,
  }) {
    return Container(
      width: fullWidth ? double.infinity : 160,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
              Text(
                '$count',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                amount,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
