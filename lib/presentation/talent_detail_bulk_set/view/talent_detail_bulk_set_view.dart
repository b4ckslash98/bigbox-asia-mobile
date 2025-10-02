import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../lib.dart';

@RoutePage()
class TalentDetailBulkSetView extends StatefulWidget
    implements AutoRouteWrapper {
  const TalentDetailBulkSetView({super.key});

  @override
  State<TalentDetailBulkSetView> createState() =>
      _TalentDetailBulkSetViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TalentJadwalCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _TalentDetailBulkSetViewState extends State<TalentDetailBulkSetView> {
  List<DateTime> _selectedDates = [];
  String _availability = 'tersedia';
  final TextEditingController _noteController = TextEditingController();

  final List<Map<String, String>> _availabilityOptions = [
    {'label': 'Tersedia', 'value': 'tersedia'},
    {'label': 'Tentatif', 'value': 'tentatif'},
    {'label': 'Tidak Tersedia Sementara', 'value': 'tidak_tersedia_sementara'},
    {'label': 'Tidak Tersedia', 'value': 'tidak_tersedia'},
  ];

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is List<DateTime>) {
        _selectedDates = args.value;
      } else if (args.value is DateTime) {
        _selectedDates = [args.value];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Jadwal Bulk'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
        backgroundColor: const Color(0xffFF6739),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Langkah 1: Pilih Tanggal (Opsional)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F4FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: const [
                Icon(Icons.calendar_today, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Klik tanggal di kalender di bawah untuk memilih multiple dates, atau langsung set tanpa memilih jika ingin apply ke semua tanggal kosong',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SfDateRangePicker(
            selectionMode: DateRangePickerSelectionMode.multiple,
            onSelectionChanged: _onSelectionChanged,
            initialSelectedDates: _selectedDates,
          ),
          const SizedBox(height: 24),
          const Text(
            'Langkah 2: Status Ketersediaan',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: _availability,
            items: _availabilityOptions
                .map((status) => DropdownMenuItem(
                      value: status['value'],
                      child: Text(status['label']!),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _availability = value!;
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Langkah 3: Catatan (Opsional)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _noteController,
            maxLines: 2,
            decoration: const InputDecoration(
              hintText: 'Contoh: Bisa overtime, fleksibel dengan waktu, dll...',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () async {
              final notes = _noteController.text;
              final dates =
                  _selectedDates.isNotEmpty ? _selectedDates : [DateTime.now()];

              for (final date in dates) {
                final reqBody = {
                  "date": date.add(const Duration(days: 1)).toIso8601String(),
                  "status": _availability,
                  "notes": notes,
                };
                await context
                    .read<TalentJadwalCubit>()
                    .postCreateScheduleTalentUsecase(reqBody);
              }

              // Tunggu update selesai sebelum pop
              await context
                  .read<TalentJadwalCubit>()
                  .getScheduleTalentUsecase();
              Navigator.of(context).pop(true);
            },
            // .
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFF6739),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text('Simpan Jadwal', style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
