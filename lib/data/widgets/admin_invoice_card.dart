import 'package:flutter/material.dart';

class AdminInvoiceCard extends StatelessWidget {
  final Map<String, dynamic> invoice;
  final VoidCallback onTap;

  const AdminInvoiceCard(
      {super.key, required this.invoice, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final invoiceNumber = invoice['invoiceNumber'] ?? '-';
    final issueDate = invoice['issueDate'] ?? '-';
    final client = invoice['client'] ?? {};
    final clientName = client['name'] ?? '-';
    final clientPhone = client['phone'] ?? '-';
    final clientAddress = client['address'] ?? '-';

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'INVOICE DETAILS',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    'CLIENT',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 1, thickness: 0.5),

            // Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Column - Invoice Detail
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.receipt_long,
                              color: Colors.blue),
                        ),
                        const SizedBox(width: 12),
                        // Texts
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              invoiceNumber,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month,
                                    color: Colors.grey, size: 14),
                                const SizedBox(width: 4),
                                Text(issueDate,
                                    style: const TextStyle(fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Right Column - Client Info
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.person, color: Colors.blue),
                        ),
                        const SizedBox(width: 12),
                        // Texts
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              clientName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              clientPhone,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
