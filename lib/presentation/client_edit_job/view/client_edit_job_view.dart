import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import '../../../lib.dart';
import '../../auth_screen/auth_bottom_sheet.dart';

@RoutePage()
class ClientEditJobView extends StatefulWidget implements AutoRouteWrapper {
  final String idJobs;

  const ClientEditJobView({
    super.key,
    required this.idJobs,
  });

  @override
  State<ClientEditJobView> createState() => _ClientEditJobViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<JobsCubit>(
      create: (context) => di<JobsCubit>(),
      child: this,
    );
  }
}

class _ClientEditJobViewState extends State<ClientEditJobView> {
  final _formKey = GlobalKey<FormState>();

  // Controllers untuk form fields
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  // Data untuk form
  String? selectedCategoryId;
  List<Map<String, String>> targetLocations = [];
  List<Map<String, dynamic>> schedules = [];
  List<Map<String, dynamic>> roles = [];

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadJobData();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _loadJobData() {
    // Load job detail untuk populate form
    context.read<JobsCubit>().getJobDetail(widget.idJobs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Job'),
        backgroundColor: Color(0xffFF6739),
        foregroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: _isLoading
                ? null
                : () async {
                    // Tampilkan autentikasi fingerprint/PIN
                    final authenticated = await showModalBottomSheet<bool>(
                          context: context,
                          isScrollControlled: true,
                          isDismissible: false,
                          enableDrag: false,
                          builder: (ctx) => AuthBottomSheet(),
                        ) ??
                        false;

                    if (authenticated) {
                      _submitForm();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text(
                                'Verifikasi gagal. Tidak dapat menyimpan data.')),
                      );
                    }
                  },
            child: _isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : const Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white),
                  ),
          ),
        ],
      ),
      body: BlocConsumer<JobsCubit, JobsState>(
        listener: (context, state) {
          // Handle success/error states
        },
        builder: (context, state) {
          // Populate form when job detail loaded
          if (state.jobDetail?.data != null && _titleController.text.isEmpty) {
            _populateForm(state.jobDetail!.data!);
          }

          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBasicInfoSection(),
                  const SizedBox(height: 24),
                  _buildLocationSection(),
                  const SizedBox(height: 24),
                  _buildScheduleSection(),
                  const SizedBox(height: 24),
                  _buildRolesSection(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _populateForm(GetDetailJobsResponseData job) {
    _titleController.text = job.title ?? '';
    _descriptionController.text = job.description ?? '';

    // Populate locations
    if (job.locations != null) {
      targetLocations = job.locations!
          .map((loc) => {
                'location_id': loc.locationId ?? '',
                'notes': loc.notes ?? '',
              })
          .toList();
    }

    // Populate schedules
    if (job.schedules != null) {
      schedules = job.schedules!
          .map((sch) => {
                // Map schedule_type sesuai dengan dropdown items yang tersedia
                'schedule_type':
                    _mapScheduleTypeFromApi(sch.scheduleType ?? ''),
                'start_time': sch.startTime?.toIso8601String() ?? '',
                'end_time': sch.endTime?.toIso8601String() ?? '',
                'notes': sch.notes ?? '',
              })
          .toList();
    }

    // Populate roles
    if (job.roles != null) {
      roles = job.roles!
          .map((role) => {
                'title': role.title ?? '',
                'gender': _mapGenderFromApi(role.gender ?? ''),
                'age_min': role.ageMin ?? 0,
                'age_max': role.ageMax ?? 0,
                'description': role.description ?? '',
                'payment_amount':
                    _parsePaymentAmount(role.paymentAmount ?? '0'),
                'payment_moderasi':
                    _parsePaymentAmount(role.paymentModerasi ?? '0'),
                'payment_type': _mapPaymentTypeFromApi(role.paymentType ?? ''),
                'count_needed': role.countNeeded ?? 0,
              })
          .toList();
    }
  }

  // Helper methods untuk mapping data dari API
  String _mapScheduleTypeFromApi(String apiValue) {
    switch (apiValue.toLowerCase()) {
      case 'shooting':
        return 'full_day';
      case 'briefing':
        return 'half_day';
      case 'custom':
        return 'custom';
      default:
        return 'full_day'; // Default value
    }
  }

  String _mapGenderFromApi(String apiValue) {
    switch (apiValue.toLowerCase()) {
      case 'male':
        return 'male';
      case 'female':
        return 'female';
      case 'any':
      case 'all':
        return 'any';
      default:
        return 'any';
    }
  }

  String _mapPaymentTypeFromApi(String apiValue) {
    switch (apiValue.toLowerCase()) {
      case 'per day':
        return 'per_day';
      case 'per project':
        return 'per_project';
      default:
        return 'per_day'; // Default value
    }
  }

  int _parsePaymentAmount(String value) {
    try {
      return double.parse(value).toInt();
    } catch (e) {
      return 0;
    }
  }

  Widget _buildBasicInfoSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Informasi Dasar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Judul Job *',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Judul job wajib diisi';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Deskripsi Job *',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Deskripsi job wajib diisi';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedCategoryId,
              decoration: const InputDecoration(
                labelText: 'Kategori *',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: '1', child: Text('Iklan')),
                DropdownMenuItem(value: '2', child: Text('Event')),
                DropdownMenuItem(value: '3', child: Text('Casting')),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCategoryId = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Kategori wajib dipilih';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Target Lokasi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: _addLocation,
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (targetLocations.isEmpty)
              const Text('Belum ada lokasi yang ditambahkan')
            else
              ...targetLocations.asMap().entries.map(
                    (entry) => _buildLocationItem(entry.key, entry.value),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationItem(int index, Map<String, String> location) {
    return Card(
      color: Colors.grey.shade50,
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('Lokasi ${index + 1}'),
                ),
                IconButton(
                  onPressed: () => _removeLocation(index),
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: location['location_id'],
              decoration: const InputDecoration(
                labelText: 'Location ID',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                targetLocations[index]['location_id'] = value;
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: location['notes'],
              decoration: const InputDecoration(
                labelText: 'Catatan',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                targetLocations[index]['notes'] = value;
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Jadwal',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: _addSchedule,
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (schedules.isEmpty)
              const Text('Belum ada jadwal yang ditambahkan')
            else
              ...schedules.asMap().entries.map(
                    (entry) => _buildScheduleItem(entry.key, entry.value),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildRolesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Role & Talent',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: _addRole,
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (roles.isEmpty)
              const Text('Belum ada role yang ditambahkan')
            else
              ...roles.asMap().entries.map(
                    (entry) => _buildRoleItem(entry.key, entry.value),
                  ),
          ],
        ),
      ),
    );
  }

  // Update _buildScheduleItem untuk konsistensi styling
  Widget _buildScheduleItem(int index, Map<String, dynamic> schedule) {
    return Card(
      color: Colors.grey.shade50,
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('Jadwal ${index + 1}'),
                ),
                IconButton(
                  onPressed: () => _removeSchedule(index),
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: schedule['schedule_type']?.isEmpty == true
                  ? null
                  : schedule['schedule_type'],
              decoration: const InputDecoration(
                labelText: 'Tipe Jadwal',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'full_day', child: Text('Full Day')),
                DropdownMenuItem(value: 'half_day', child: Text('Half Day')),
                DropdownMenuItem(value: 'custom', child: Text('Custom')),
                DropdownMenuItem(value: 'shooting', child: Text('Shooting')),
                DropdownMenuItem(value: 'briefing', child: Text('Briefing')),
              ],
              onChanged: (value) {
                setState(() {
                  schedules[index]['schedule_type'] = value;
                });
              },
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Waktu Mulai',
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                    onTap: () => _selectDateTime(index, 'start_time'),
                    controller: TextEditingController(
                      text: _formatDateTimeForDisplay(
                          schedule['start_time'] ?? ''),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Waktu Selesai',
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                    onTap: () => _selectDateTime(index, 'end_time'),
                    controller: TextEditingController(
                      text:
                          _formatDateTimeForDisplay(schedule['end_time'] ?? ''),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: schedule['notes'],
              decoration: const InputDecoration(
                labelText: 'Catatan',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                schedules[index]['notes'] = value;
              },
            ),
          ],
        ),
      ),
    );
  }

  // Update _buildRoleItem untuk konsistensi styling
  Widget _buildRoleItem(int index, Map<String, dynamic> role) {
    return Card(
      color: Colors.grey.shade50,
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('Role ${index + 1}'),
                ),
                IconButton(
                  onPressed: () => _removeRole(index),
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: role['title'],
              decoration: const InputDecoration(
                labelText: 'Judul Role',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                roles[index]['title'] = value;
              },
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value:
                        role['gender']?.isEmpty == true ? null : role['gender'],
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'male', child: Text('Laki-laki')),
                      DropdownMenuItem(
                          value: 'female', child: Text('Perempuan')),
                      DropdownMenuItem(value: 'any', child: Text('Semua')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        roles[index]['gender'] = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    initialValue: role['count_needed'].toString(),
                    decoration: const InputDecoration(
                      labelText: 'Jumlah Dibutuhkan',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      roles[index]['count_needed'] = int.tryParse(value) ?? 0;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: role['age_min'].toString(),
                    decoration: const InputDecoration(
                      labelText: 'Usia Min',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      roles[index]['age_min'] = int.tryParse(value) ?? 0;
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    initialValue: role['age_max'].toString(),
                    decoration: const InputDecoration(
                      labelText: 'Usia Max',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      roles[index]['age_max'] = int.tryParse(value) ?? 0;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: role['description'],
              decoration: const InputDecoration(
                labelText: 'Deskripsi Role',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
              onChanged: (value) {
                roles[index]['description'] = value;
              },
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: role['payment_amount'].toString(),
                    decoration: const InputDecoration(
                      labelText: 'Payment Amount',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      roles[index]['payment_amount'] = int.tryParse(value) ?? 0;
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: role['payment_type']?.isEmpty == true
                        ? null
                        : role['payment_type'],
                    decoration: const InputDecoration(
                      labelText: 'Payment Type',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                          value: 'per_day', child: Text('Per Hari')),
                      DropdownMenuItem(
                          value: 'per_project', child: Text('Per Project')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        roles[index]['payment_type'] = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _addLocation() {
    setState(() {
      targetLocations.add({
        'location_id': '',
        'notes': '',
      });
    });
  }

  void _removeLocation(int index) {
    setState(() {
      targetLocations.removeAt(index);
    });
  }

  void _addSchedule() {
    setState(() {
      schedules.add({
        'schedule_type': '',
        'start_time': '',
        'end_time': '',
        'notes': '',
      });
    });
  }

  void _removeSchedule(int index) {
    setState(() {
      schedules.removeAt(index);
    });
  }

  void _addRole() {
    setState(() {
      roles.add({
        'title': '',
        'gender': '',
        'age_min': 0,
        'age_max': 0,
        'description': '',
        'payment_amount': 0,
        'payment_moderasi': 0,
        'payment_type': '',
        'count_needed': 0,
      });
    });
  }

  void _removeRole(int index) {
    setState(() {
      roles.removeAt(index);
    });
  }

  Future<void> _selectDateTime(int index, String type) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null) {
      final TimeOfDay? timePicked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (timePicked != null) {
        final DateTime dateTime = DateTime(
          picked.year,
          picked.month,
          picked.day,
          timePicked.hour,
          timePicked.minute,
        );

        setState(() {
          schedules[index][type] = dateTime.toIso8601String();
        });
      }
    }
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      final Map<String, dynamic> requestBody = {
        'title': _titleController.text,
        'description': _descriptionController.text,
        'categories_id': selectedCategoryId,
        'target_locations': targetLocations,
        'schedules': schedules
            .map((schedule) => {
                  'schedule_type':
                      _mapScheduleTypeToApi(schedule['schedule_type'] ?? ''),
                  'start_time': schedule['start_time'],
                  'end_time': schedule['end_time'],
                  'notes': schedule['notes'],
                })
            .toList(),
        'roles': roles
            .map((role) => {
                  'title': role['title'],
                  'gender': _mapGenderToApi(role['gender'] ?? ''),
                  'age_min': role['age_min'],
                  'age_max': role['age_max'],
                  'description': role['description'],
                  'payment_amount': role['payment_amount'],
                  'payment_moderasi': role['payment_moderasi'] ?? 0,
                  'payment_type':
                      _mapPaymentTypeToApi(role['payment_type'] ?? ''),
                  'count_needed': role['count_needed'],
                })
            .toList(),
      };

      try {
        await context.read<JobsCubit>().updateJob(requestBody, widget.idJobs);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Job berhasil diupdate')),
          );
          router.maybePop();
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $e')),
          );
        }
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  // Helper methods untuk mapping kembali ke format API
  String _mapScheduleTypeToApi(String dropdownValue) {
    switch (dropdownValue) {
      case 'shooting':
        return 'Shooting';
      case 'briefing':
        return 'Briefing';
      case 'full_day':
        return 'Shooting';
      case 'half_day':
        return 'Briefing';
      default:
        return dropdownValue;
    }
  }

  String _mapGenderToApi(String dropdownValue) {
    switch (dropdownValue) {
      case 'male':
        return 'Male';
      case 'female':
        return 'Female';
      case 'any':
        return 'Any';
      default:
        return dropdownValue;
    }
  }

  String _mapPaymentTypeToApi(String dropdownValue) {
    switch (dropdownValue) {
      case 'per_day':
        return 'per day';
      case 'per_project':
        return 'per project';
      default:
        return dropdownValue;
    }
  }

  // Helper method untuk format datetime display
  String _formatDateTimeForDisplay(String isoString) {
    if (isoString.isEmpty) return '';
    try {
      final DateTime dateTime = DateTime.parse(isoString);
      return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } catch (e) {
      return isoString;
    }
  }
}
