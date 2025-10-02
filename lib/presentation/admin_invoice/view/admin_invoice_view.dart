import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../lib.dart';

@RoutePage()
class AdminInvoiceView extends StatefulWidget implements AutoRouteWrapper {
  const AdminInvoiceView({super.key});

  @override
  State<AdminInvoiceView> createState() => _AdminInvoiceViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _AdminInvoiceViewState extends State<AdminInvoiceView> {
  final List<Map<String, dynamic>> data = [
    {
      'invoiceNumber': 'INV-2025-0002',
      'issueDate': '11 Juli 2025',
      'client': {
        'name': 'Demo Client',
        'phone': '081234567889',
        'address': 'Jl Manunggal Sawo 5 No 6, Jakarta, Jakarta'
      },
      'items': [
        {
          'no': 1,
          'description': 'Talent Service Fee - Iklan Tokopedia 2025',
          'price': 5000000
        }
      ],
      'grossAmount': 5000000,
      'tax': {'percentage': 0, 'amount': 0},
      'nettAmount': 5000000,
      'terbilang': 'Lima juta rupiah',
      'notes': {
        'paymentNote': 'CATATAN PEMBAYARAN',
        'totalAmountNote': 'TOTAL AMOUNT TO PAY'
      },
      'footer': {
        'amountToPay': 5000000,
        'amountNote': 'Gross Amount (termasuk pajak)',
        'sign': {'name': 'Budi Dwija Putra', 'position': 'Agency Model'},
        'contact': {
          'phone': '+62 852-2881-9272',
          'email': 'info@bigbox.asia',
          'location': '123 Indonesia, Jakarta'
        }
      }
    },
    {
      'invoiceNumber': 'INV-2025-0002',
      'issueDate': '11 Juli 2025',
      'client': {
        'name': 'Demo Client',
        'phone': '081234567889',
        'address': 'Jl Manunggal Sawo 5 No 6, Jakarta, Jakarta'
      },
      'items': [
        {
          'no': 1,
          'description': 'Talent Service Fee - Iklan Tokopedia 2025',
          'price': 5000000
        }
      ],
      'grossAmount': 5000000,
      'tax': {'percentage': 0, 'amount': 0},
      'nettAmount': 5000000,
      'terbilang': 'Lima juta rupiah',
      'notes': {
        'paymentNote': 'CATATAN PEMBAYARAN',
        'totalAmountNote': 'TOTAL AMOUNT TO PAY'
      },
      'footer': {
        'amountToPay': 5000000,
        'amountNote': 'Gross Amount (termasuk pajak)',
        'sign': {'name': 'Budi Dwija Putra', 'position': 'Agency Model'},
        'contact': {
          'phone': '+62 852-2881-9272',
          'email': 'info@bigbox.asia',
          'location': '123 Indonesia, Jakarta'
        }
      }
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          HeaderInvoiceView(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.5,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                _buildSummaryCard('TOTAL INVOICES', '1', 'Rp 0', Colors.blue),
                _buildSummaryCard('PENDING', '0', 'Rp 0', Colors.orange),
                _buildSummaryCard('PAID', '1', 'Rp 3.850.000', Colors.green),
                _buildSummaryCard('OVERDUE', '0', 'Rp 0', Colors.pink),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Icon(Icons.search, size: 18), // Search icon adjusted
                const SizedBox(width: 8),
                const Text(
                  'Filter: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold), // Added bold styling
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: 'Semua Status',
                    items: const [
                      DropdownMenuItem(
                          value: 'Semua Status', child: Text('Semua Status')),
                      DropdownMenuItem(value: 'Paid', child: Text('Paid')),
                      DropdownMenuItem(
                          value: 'Pending', child: Text('Pending')),
                    ],
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      filled: true, // Fill color for the dropdown
                      fillColor: Colors
                          .grey[100], // Light grey background for dropdown
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8), // Padding inside the dropdown
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                        borderSide: BorderSide.none, // Remove border
                      ),
                      hintText: '', // Remove hint text inside the field
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Invoice List
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return AdminInvoiceCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                InvoicePrintView(invoice: data[index]),
                          ),
                        );
                      },
                      invoice: data[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(
      String title, String count, String amount, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 11, fontWeight: FontWeight.w600, color: color)),
          const SizedBox(height: 6),
          Text(count,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: color)),
          const SizedBox(height: 2),
          Text(amount,
              style: TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w500, color: color)),
        ],
      ),
    );
  }
}
