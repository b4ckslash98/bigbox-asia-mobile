import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoicePrintView extends StatelessWidget {
  final Map<String, dynamic> invoice;

  const InvoicePrintView({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Invoice Preview"),
        actions: [
          IconButton(
            icon: const Icon(Icons.print),
            onPressed: () => _printPdf(context),
          ),
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => _downloadPdf(context),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildPreview(context),
        ],
      ),
    );
  }

  Widget _buildPreview(BuildContext context) {
    final client = invoice['client'];
    final items = List<Map<String, dynamic>>.from(invoice['items']);
    final tax = invoice['tax'];
    final footer = invoice['footer'];
    final notes = invoice['notes'];
    final formatter =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              "INVOICE",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(thickness: 1),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Kolom Kiri (Kepada YTH)
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Kepada YTH:"),
                  Text(client['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(client['phone']),
                  Text(client['address'], softWrap: true),
                ],
              ),
            ),

            const SizedBox(width: 16), // jarak antar kolom

            /// Kolom Kanan (Invoice Info)
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Nomor Invoice:", style: TextStyle(fontSize: 10)),
                  Text(invoice['invoiceNumber'],
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text("Tanggal: ${invoice['issueDate']}"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Divider(thickness: 1),

        /// TABLE
        Table(
          border: TableBorder.all(color: Colors.orange),
          columnWidths: const {
            0: FixedColumnWidth(40),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(120),
          },
          children: [
            const TableRow(
              decoration: BoxDecoration(color: Colors.orange),
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("NO", style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("DESCRIPTION",
                      style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("PRICE", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            ...items.map((item) {
              return TableRow(
                decoration: const BoxDecoration(color: Color(0xFFFFF3E0)),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(item['no'].toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(item['description']),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(formatter.format(item['price'])),
                  ),
                ],
              );
            }),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(thickness: 1),

        /// RINGKASAN
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Gross Amount:"),
            Text(formatter.format(invoice['grossAmount']),
                style: const TextStyle(color: Colors.green)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Pajak Penghasilan (${tax['percentage']}%):"),
            Text("-${formatter.format(tax['amount'])}",
                style: const TextStyle(color: Colors.red)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Nett Amount:"),
            Text(formatter.format(invoice['nettAmount']),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green)),
          ],
        ),
        const SizedBox(height: 6),
        Text("Terbilang: ${invoice['terbilang']}"),

        const SizedBox(height: 10),
        const Divider(thickness: 1),

        /// CATATAN
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          color: Colors.orange,
          child: Center(
            child: Text(notes['paymentNote'],
                style: const TextStyle(color: Colors.white)),
          ),
        ),

        const SizedBox(height: 10),
        const Divider(thickness: 1),

        /// TOTAL TO PAY + SIGNATURE
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.orange),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Center(
            child: Text("TOTAL AMOUNT TO PAY",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(formatter.format(footer['amountToPay']),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(footer['amountNote'], style: const TextStyle(fontSize: 10)),
              const SizedBox(height: 40),
              Text(footer['sign']['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(footer['sign']['position']),
            ],
          ),
        ),

        const SizedBox(height: 20),
        const Divider(thickness: 1),

        /// KONTAK
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          runSpacing: 4,
          children: [
            Text("☎ ${footer['contact']['phone']}"),
            Text("✉ ${footer['contact']['email']}"),
            Text("📍 ${footer['contact']['location']}"),
          ],
        ),
      ],
    );
  }

  Future<pw.Document> _buildPdf() async {
    final doc = pw.Document();
    final invoiceData = invoice;
    final formatter =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    final items = List<Map<String, dynamic>>.from(invoiceData['items']);

    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(
                    "INVOICE",
                    style: pw.TextStyle(
                      fontSize: 24,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.orange,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Divider(thickness: 1),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text("Kepada YTH:"),
                      pw.Text(invoiceData['client']['name'],
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text(invoiceData['client']['phone']),
                      pw.Text(invoiceData['client']['address']),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text("Nomor Invoice:",
                          style: const pw.TextStyle(fontSize: 10)),
                      pw.Text(invoiceData['invoiceNumber'],
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text("Tanggal: ${invoiceData['issueDate']}"),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 12),
              pw.Divider(thickness: 1),
              pw.Table.fromTextArray(
                headerDecoration: pw.BoxDecoration(color: PdfColors.orange),
                headerStyle: pw.TextStyle(
                    color: PdfColors.white, fontWeight: pw.FontWeight.bold),
                rowDecoration:
                    const pw.BoxDecoration(color: PdfColor.fromInt(0xFFFFF3E0)),
                cellAlignment: pw.Alignment.centerLeft,
                headers: ['NO', 'DESCRIPTION', 'PRICE'],
                data: items
                    .map((item) => [
                          item['no'].toString(),
                          item['description'],
                          formatter.format(item['price']),
                        ])
                    .toList(),
              ),
              pw.SizedBox(height: 20),
              pw.Divider(thickness: 1),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text("Gross Amount:"),
                  pw.Text(formatter.format(invoiceData['grossAmount']),
                      style: pw.TextStyle(color: PdfColors.green)),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                      "Pajak Penghasilan (${invoiceData['tax']['percentage']}%):"),
                  pw.Text("-${formatter.format(invoiceData['tax']['amount'])}",
                      style: pw.TextStyle(color: PdfColors.red)),
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text("Nett Amount:"),
                  pw.Text(formatter.format(invoiceData['nettAmount']),
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.green)),
                ],
              ),
              pw.SizedBox(height: 6),
              pw.Text("Terbilang: ${invoiceData['terbilang']}"),
              pw.SizedBox(height: 10),
              pw.Divider(thickness: 1),
              pw.Container(
                width: double.infinity,
                padding: const pw.EdgeInsets.all(10),
                color: PdfColors.orange,
                child: pw.Center(
                  child: pw.Text(invoiceData['notes']['paymentNote'],
                      style: pw.TextStyle(color: PdfColors.white)),
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Divider(thickness: 1),
              pw.Container(
                width: double.infinity,
                color: PdfColors.orange,
                padding: const pw.EdgeInsets.symmetric(vertical: 10),
                child: pw.Center(
                  child: pw.Text("TOTAL AMOUNT TO PAY",
                      style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold)),
                ),
              ),
              pw.Container(
                width: double.infinity,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    // TOTAL TO PAY
                    pw.Container(
                      padding: const pw.EdgeInsets.symmetric(vertical: 12),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            formatter
                                .format(invoiceData['footer']['amountToPay']),
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 4),
                          pw.Text(
                            invoiceData['footer']['amountNote'],
                            style: const pw.TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 40),

                    // SIGNATURE
                    pw.Container(
                      padding: const pw.EdgeInsets.symmetric(vertical: 12),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            invoiceData['footer']['sign']['name'],
                            style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                          ),
                          pw.Text(invoiceData['footer']['sign']['position']),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Divider(thickness: 1),
              pw.Center(
                child: pw.Wrap(
                  alignment: pw.WrapAlignment.center,
                  spacing: 16,
                  runSpacing: 4,
                  children: [
                    pw.Text("☎ ${invoiceData['footer']['contact']['phone']}"),
                    pw.Text("✉ ${invoiceData['footer']['contact']['email']}"),
                    pw.Text(
                        "📍 ${invoiceData['footer']['contact']['location']}"),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

    return doc;
  }

  void _printPdf(BuildContext context) async {
    final pdf = await _buildPdf();
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());
  }

  void _downloadPdf(BuildContext context) async {
    final pdf = await _buildPdf();
    await Printing.sharePdf(
        bytes: await pdf.save(),
        filename: 'invoice_${invoice['invoiceNumber']}.pdf');
  }
}
