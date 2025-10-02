import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'base_step.dart';

class Step3ProcessSchedules extends BaseStep {
  final List<Map<String, dynamic>> processSchedules;
  final Function() onAddSchedule;
  final Function(int) onRemoveSchedule;
  final Function(int, String, dynamic) onScheduleChanged;

  const Step3ProcessSchedules({
    super.key,
    required this.processSchedules,
    required this.onAddSchedule,
    required this.onRemoveSchedule,
    required this.onScheduleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSectionTitle('Jadwal Proses'),
              ElevatedButton.icon(
                onPressed: onAddSchedule,
                icon: const Icon(Icons.add, size: 16),
                label: const Text('Tambah'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...processSchedules.asMap().entries.map((entry) {
            final index = entry.key;
            final schedule = entry.value;
            final formatter = DateFormat('dd/MM/yyyy HH:mm');
            final List<String> scheduleTypes = [
              'Meeting',
              'Rehearsal',
              'Preparation',
              'Lain-lain'
            ];

            String? selectedType;
            if (scheduleTypes.contains(schedule['schedule_type']) &&
                schedule['schedule_type'] != '') {
              selectedType = schedule['schedule_type'];
            } else if (schedule['schedule_type'] == '' ||
                !scheduleTypes.contains(schedule['schedule_type'])) {
              selectedType = 'Lain-lain';
            } else {
              selectedType = null;
            }

            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jadwal Proses ${index + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => onRemoveSchedule(index),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: selectedType,
                      decoration: const InputDecoration(
                        labelText: 'Tipe Jadwal',
                        border: OutlineInputBorder(),
                      ),
                      items: scheduleTypes.map((type) {
                        return DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value == 'Lain-lain') {
                          onScheduleChanged(index, 'schedule_type', '');
                        } else {
                          onScheduleChanged(index, 'schedule_type', value);
                        }
                      },
                    ),
                    if (selectedType == 'Lain-lain')
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: TextFormField(
                          initialValue:
                              !scheduleTypes.contains(schedule['schedule_type'])
                                  ? schedule['schedule_type']
                                  : '',
                          decoration: const InputDecoration(
                            labelText: 'Tipe Jadwal Lainnya',
                            hintText: 'Isi tipe jadwal lain di sini',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            onScheduleChanged(index, 'schedule_type', value);
                          },
                        ),
                      ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              final picked = await _showCustomDatePicker(
                                  context, schedule['start_time']);
                              if (picked != null) {
                                final time = await _showCustomTimePicker(
                                    context,
                                    TimeOfDay.fromDateTime(
                                        schedule['start_time']));
                                if (time != null) {
                                  final datetime = DateTime(
                                    picked.year,
                                    picked.month,
                                    picked.day,
                                    time.hour,
                                    time.minute,
                                  );
                                  onScheduleChanged(
                                      index, 'start_time', datetime);
                                }
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tanggal & Waktu Mulai',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_today,
                                          size: 16, color: Colors.deepOrange),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          formatter
                                              .format(schedule['start_time']),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              final picked = await _showCustomDatePicker(
                                  context, schedule['end_time']);
                              if (picked != null) {
                                final time = await _showCustomTimePicker(
                                    context,
                                    TimeOfDay.fromDateTime(
                                        schedule['end_time']));
                                if (time != null) {
                                  final datetime = DateTime(
                                    picked.year,
                                    picked.month,
                                    picked.day,
                                    time.hour,
                                    time.minute,
                                  );
                                  onScheduleChanged(
                                      index, 'end_time', datetime);
                                }
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tanggal & Waktu Selesai',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_today,
                                          size: 16, color: Colors.deepOrange),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          formatter
                                              .format(schedule['end_time']),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      initialValue: schedule['notes'],
                      decoration: const InputDecoration(
                        labelText: 'Catatan',
                        hintText: 'Informasi tambahan tentang jadwal',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                      onChanged: (value) {
                        onScheduleChanged(index, 'notes', value);
                      },
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          if (processSchedules.isEmpty)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Belum ada jadwal proses. Klik "Tambah" untuk menambahkan jadwal.',
                  style: TextStyle(color: Colors.grey.shade600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Custom Date Picker dengan UI yang lebih bagus
  Future<DateTime?> _showCustomDatePicker(
      BuildContext context, DateTime initialDate) async {
    DateTime? selectedDate = initialDate;

    return showDialog<DateTime?>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text(
                    'Pilih Tanggal',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),

                // Calendar
                Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary: Colors.deepOrange,
                      onPrimary: Colors.deepOrange,
                      onSurface: Colors.black,
                    ),
                  ),
                  child: SizedBox(
                    height: 300,
                    child: CalendarDatePicker(
                      initialDate: initialDate,
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                      onDateChanged: (DateTime value) {
                        selectedDate = value;
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Custom Rounded Buttons
                Row(
                  children: [
                    // Cancel Button
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            side: BorderSide(color: Colors.grey.shade400),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // Radius button
                            ),
                          ),
                          child: const Text(
                            'BATAL',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Confirm Button
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(selectedDate);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // Radius button
                            ),
                            elevation: 2,
                          ),
                          child: const Text(
                            'PILIH',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Custom Time Picker
  Future<TimeOfDay?> _showCustomTimePicker(
      BuildContext context, TimeOfDay initialTime) async {
    TimeOfDay? selectedTime = initialTime;

    return showDialog<TimeOfDay?>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text(
                    'Pilih Waktu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),

                // Time Picker dengan StatefulBuilder
                StatefulBuilder(
                  builder: (context, setState) {
                    return Column(
                      children: [
                        // Custom Time Display
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange.shade50,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            selectedTime!.format(context),
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Time Selection Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Hour selection
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTime = selectedTime!.replacing(
                                        hour: (selectedTime!.hour + 1) % 24,
                                      );
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_up,
                                      color: Colors.deepOrange),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.deepOrange.shade200),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    '${selectedTime!.hour.toString().padLeft(2, '0')}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTime = selectedTime!.replacing(
                                        hour:
                                            (selectedTime!.hour - 1 + 24) % 24,
                                      );
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.deepOrange),
                                ),
                              ],
                            ),

                            const Text(':',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                )),

                            // Minute selection
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTime = selectedTime!.replacing(
                                        minute: (selectedTime!.minute + 1) % 60,
                                      );
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_up,
                                      color: Colors.deepOrange),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.deepOrange.shade200),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    '${selectedTime!.minute.toString().padLeft(2, '0')}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTime = selectedTime!.replacing(
                                        minute:
                                            (selectedTime!.minute - 1 + 60) %
                                                60,
                                      );
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.deepOrange),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 20),

                // Custom Rounded Buttons
                Row(
                  children: [
                    // Cancel Button
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            side: BorderSide(color: Colors.grey.shade400),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            'BATAL',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Confirm Button
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(selectedTime);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 2,
                          ),
                          child: const Text(
                            'PILIH',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
