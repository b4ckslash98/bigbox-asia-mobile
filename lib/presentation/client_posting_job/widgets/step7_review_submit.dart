import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'base_step.dart';
import '../../../lib.dart';
import '../../../data/utils/currency_formatter.dart';

class Step7ReviewSubmit extends BaseStep {
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final List<String> selectedCategories;
  final List<Map<String, dynamic>> eventLocations;
  final List<Map<String, dynamic>> talentLocations;
  final List<Map<String, dynamic>> processSchedules;
  final List<Map<String, dynamic>> finalSchedules;
  final List<Map<String, dynamic>> roles;
  final List<Map<String, dynamic>> closedQuestions;
  final List<dynamic> apiLocations;
  final Function() onSubmit;

  const Step7ReviewSubmit({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.selectedCategories,
    required this.eventLocations,
    required this.talentLocations,
    required this.processSchedules,
    required this.finalSchedules,
    required this.roles,
    required this.closedQuestions,
    required this.apiLocations,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('dd/MM/yyyy HH:mm');

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionTitle('Review & Submit'),
          const SizedBox(height: 16),

          // Project Details
          _buildReviewCard(
            'Detail Proyek',
            [
              _buildInfoRow('Judul', titleController.text),
              _buildInfoRow('Deskripsi', descriptionController.text),
              _buildCategoriesSection(context),
            ],
          ),

          // Event Locations
          if (eventLocations.isNotEmpty)
            _buildReviewCard(
              'Lokasi Event (${eventLocations.length})',
              eventLocations.asMap().entries.map((entry) {
                final index = entry.key;
                final location = entry.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Event ${index + 1}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    _buildInfoRow('Wilayah', _buildLocationName(location)),
                    _buildInfoRow('Catatan', location['notes'] ?? '-'),
                    if (index < eventLocations.length - 1) const Divider(),
                  ],
                );
              }).toList(),
            ),

          // Talent Locations
          if (talentLocations.isNotEmpty)
            _buildReviewCard(
              'Lokasi Talent (${talentLocations.length})',
              talentLocations.asMap().entries.map((entry) {
                final index = entry.key;
                final location = entry.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Talent ${index + 1}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    _buildInfoRow('Wilayah', _buildLocationName(location)),
                    _buildInfoRow('Catatan', location['notes'] ?? '-'),
                    if (index < talentLocations.length - 1) const Divider(),
                  ],
                );
              }).toList(),
            ),

          // Process Schedules
          if (processSchedules.isNotEmpty)
            _buildReviewCard(
              'Jadwal Proses (${processSchedules.length})',
              processSchedules.asMap().entries.map((entry) {
                final index = entry.key;
                final schedule = entry.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jadwal ${index + 1}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    _buildInfoRow('Tipe', schedule['schedule_type']),
                    _buildInfoRow(
                        'Mulai', formatter.format(schedule['start_time'])),
                    _buildInfoRow(
                        'Selesai', formatter.format(schedule['end_time'])),
                    _buildInfoRow('Catatan', schedule['notes'] ?? '-'),
                    if (index < processSchedules.length - 1) const Divider(),
                  ],
                );
              }).toList(),
            ),

          // Final Schedules
          if (finalSchedules.isNotEmpty)
            _buildReviewCard(
              'Jadwal Final (${finalSchedules.length})',
              finalSchedules.asMap().entries.map((entry) {
                final index = entry.key;
                final schedule = entry.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jadwal ${index + 1}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    _buildInfoRow('Tipe', schedule['schedule_type']),
                    _buildInfoRow(
                        'Mulai', formatter.format(schedule['start_time'])),
                    _buildInfoRow(
                        'Selesai', formatter.format(schedule['end_time'])),
                    _buildInfoRow('Catatan', schedule['notes'] ?? '-'),
                    if (index < finalSchedules.length - 1) const Divider(),
                  ],
                );
              }).toList(),
            ),

          // Roles
          if (roles.isNotEmpty)
            _buildReviewCard(
              'Peran (${roles.length})',
              roles.asMap().entries.map((entry) {
                final index = entry.key;
                final role = entry.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role['title'] ?? 'Peran ${index + 1}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    _buildInfoRow('Gender', _getGenderText(role['gender'])),
                    _buildInfoRow('Usia',
                        '${role['age_min']} - ${role['age_max']} tahun'),
                    _buildInfoRow('Lokasi', () {
                      Map<String, dynamic> roleLocation = {};

                      // Buat object location dari role data
                      if (role['location_area_id'] != null &&
                          role['location_area_id'].isNotEmpty) {
                        roleLocation['location_id'] = role['location_area_id'];
                        roleLocation['parent_id'] =
                            role['location_province_id'];
                      } else if (role['location_province_id'] != null &&
                          role['location_province_id'].isNotEmpty) {
                        roleLocation['location_id'] =
                            role['location_province_id'];
                        roleLocation['parent_id'] =
                            role['location_province_id'];
                      }

                      return roleLocation.isNotEmpty
                          ? _buildLocationName(roleLocation)
                          : 'Belum dipilih';
                    }()),
                    _buildInfoRow('Deskripsi', role['description'] ?? '-'),
                    _buildInfoRow('Pembayaran',
                        '${CurrencyInputFormatter.formatDisplay(role['payment_amount'] ?? 0)} ${_getPaymentTypeText(role['payment_type'])}'),
                    _buildInfoRow(
                        'Jumlah', '${role['count_needed'] ?? 1} orang'),

                    // Additional Charges
                    if (role['additional_charges'] != null &&
                        (role['additional_charges'] as List).isNotEmpty) ...[
                      const SizedBox(height: 8),
                      const Text(
                        'Additional Charges:',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      ...((role['additional_charges']
                              as List<Map<String, dynamic>>)
                          .map((charge) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 4),
                          child: Text(
                            '• ${charge['description']}: ${CurrencyInputFormatter.formatDisplay(charge['amount'] ?? 0)}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        );
                      }).toList()),
                    ],

                    if (index < roles.length - 1) const Divider(),
                  ],
                );
              }).toList(),
            ),

          // Closed Questions
          if (closedQuestions.isNotEmpty)
            _buildReviewCard(
              'Pertanyaan Tertutup (${closedQuestions.length})',
              closedQuestions.asMap().entries.map((entry) {
                final index = entry.key;
                final question = entry.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pertanyaan ${index + 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    _buildInfoRow('Pertanyaan', question['question'] ?? ''),
                    _buildInfoRow(
                      'Tipe',
                      question['yes_or_no_question'] == true
                          ? 'Ya/Tidak'
                          : 'Teks Bebas',
                    ),
                    if (index < closedQuestions.length - 1) const Divider(),
                  ],
                );
              }).toList(),
            ),

          // Info jika semua section kosong
          if (eventLocations.isEmpty &&
              talentLocations.isEmpty &&
              processSchedules.isEmpty &&
              finalSchedules.isEmpty &&
              roles.isEmpty &&
              closedQuestions.isEmpty) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.warning_amber_outlined,
                    color: Colors.orange.shade700,
                    size: 48,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Data Belum Lengkap',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Pastikan Anda telah mengisi minimal satu lokasi, jadwal, dan peran sebelum submit.',
                    style: TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: 24),

          // Submit Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _canSubmit() ? onSubmit : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: _canSubmit() ? Colors.orange : Colors.grey,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                _canSubmit()
                    ? 'Submit Iklan Proyek'
                    : 'Lengkapi Data Terlebih Dahulu',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Add validation method
  bool _canSubmit() {
    return titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        roles.isNotEmpty; // Minimal harus ada peran
  }

  // Rest of the helper methods remain the same...
  Widget _buildCategoriesSection(BuildContext context) {
    if (selectedCategories.isEmpty) {
      return _buildInfoRow('Kategori', 'Belum dipilih');
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 100,
            child: Text(
              'Kategori:',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<ClientPostingJobCubit, ClientPostingJobState>(
              builder: (context, state) {
                final categories = state.categories?.data ?? [];
                final selectedCategoryNames = selectedCategories
                    .map((categoryId) =>
                        _getCategoryName(categories, categoryId))
                    .where((name) => name.isNotEmpty)
                    .toList();

                if (selectedCategoryNames.isEmpty) {
                  return const Text(
                    'Kategori tidak ditemukan',
                    style: TextStyle(color: Colors.black87),
                  );
                }

                return Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: selectedCategoryNames.map((categoryName) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.orange.shade300),
                      ),
                      child: Text(
                        categoryName,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.orange.shade800,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String _getCategoryName(
      List<DataGetCategoriesResponse> categories, String categoryId) {
    try {
      return categories.firstWhere((c) => c.id == categoryId).name ?? '';
    } catch (e) {
      return '';
    }
  }

  Widget _buildReviewCard(String title, List<Widget> children) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value.isNotEmpty ? value : '-',
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  String _getLocationName(String? locationId) {
    if (locationId == null || locationId.isEmpty) return '';

    for (int i = 0; i < apiLocations.length; i++) {
      var location = apiLocations[i];

      String id = '';
      String name = '';

      try {
        id = location.id?.toString() ?? '';
        name = location.name?.toString() ?? '';
      } catch (e) {
        try {
          id = location['id']?.toString() ?? '';
          name = location['name']?.toString() ?? '';
        } catch (e2) {
          continue;
        }
      }

      if (id == locationId && name.isNotEmpty) {
        return name;
      }
    }

    return '';
  }

  String _getGenderText(String? gender) {
    switch (gender) {
      case 'Male':
        return 'Pria';
      case 'Female':
        return 'Wanita';
      case 'Any':
        return 'Bebas';
      default:
        return '';
    }
  }

  String _getPaymentTypeText(String? paymentType) {
    switch (paymentType) {
      case 'per day':
        return 'per hari';
      case 'per project':
        return 'per proyek';
      case 'per hour':
        return 'per jam';
      default:
        return '';
    }
  }

  // Modifikasi method _buildLocationName untuk menampilkan parent dan child
  String _buildLocationName(Map<String, dynamic> location) {
    String result = '';

    // Tampilkan parent location
    if (location['parent_id'] != null && location['parent_id'].isNotEmpty) {
      String parentName = _getLocationName(location['parent_id']);
      if (parentName.isNotEmpty) {
        result = parentName;
      }
    }

    // Jika ada child location dan berbeda dari parent, tampilkan keduanya
    if (location['location_id'] != null &&
        location['location_id'].isNotEmpty &&
        location['location_id'] != location['parent_id']) {
      String childName = _getLocationName(location['location_id']);
      if (childName.isNotEmpty) {
        if (result.isNotEmpty) {
          result += ' → $childName'; // Parent → Child
        } else {
          result = childName;
        }
      }
    }

    return result.isNotEmpty ? result : 'Lokasi tidak ditemukan';
  }
}
