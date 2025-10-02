import 'package:flutter/material.dart';
import 'base_step.dart';

class Step2Locations extends BaseStep {
  final List<Map<String, dynamic>> eventLocations;
  final List<Map<String, dynamic>> talentLocations;
  final List<dynamic> parentLocations;
  final List<dynamic> childLocations;
  final List<dynamic> apiLocations;
  final Function() onAddEventLocation;
  final Function() onAddTalentLocation;
  final Function(int) onRemoveEventLocation;
  final Function(int) onRemoveTalentLocation;
  final Function(int, String, String) onEventLocationChanged;
  final Function(int, String, String) onTalentLocationChanged;

  const Step2Locations({
    super.key,
    required this.eventLocations,
    required this.talentLocations,
    required this.parentLocations,
    required this.childLocations,
    required this.apiLocations,
    required this.onAddEventLocation,
    required this.onAddTalentLocation,
    required this.onRemoveEventLocation,
    required this.onRemoveTalentLocation,
    required this.onEventLocationChanged,
    required this.onTalentLocationChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionTitle('Lokasi'),
          const SizedBox(height: 16),
          _buildLocationSection(
            'Lokasi Event',
            eventLocations,
            onAddEventLocation,
            onRemoveEventLocation,
            onEventLocationChanged,
            Colors.blue,
          ),
          const SizedBox(height: 24),
          _buildLocationSection(
            'Lokasi Talent',
            talentLocations,
            onAddTalentLocation,
            onRemoveTalentLocation,
            onTalentLocationChanged,
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildLocationSection(
    String title,
    List<Map<String, dynamic>> locations,
    Function() onAdd,
    Function(int) onRemove,
    Function(int, String, String) onLocationChanged,
    Color color,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add, size: 16),
              label: const Text('Tambah'),
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        if (locations.isEmpty)
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Belum ada $title. Klik "Tambah" untuk menambahkan lokasi.',
                style: TextStyle(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
            ),
          )
        else
          ...locations.asMap().entries.map((entry) {
            final index = entry.key;
            final location = entry.value;

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
                          '$title ${index + 1}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: color,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => onRemove(index),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      children: [
                        // Parent Location Dropdown
                        DropdownButtonFormField<String>(
                          value: (location['parent_id'] != null &&
                                  location['parent_id'].isNotEmpty)
                              ? location['parent_id']
                              : null,
                          decoration: const InputDecoration(
                            labelText: 'Pilih Provinsi/Kota',
                            border: OutlineInputBorder(),
                          ),
                          hint: const Text('Pilih provinsi/kota'),
                          items: parentLocations
                              .map<DropdownMenuItem<String>>((loc) {
                            return DropdownMenuItem<String>(
                              value: loc.id,
                              child: Text(loc.name ?? ''),
                            );
                          }).toList(),
                          onChanged: (value) {
                            // Set parent_id
                            onLocationChanged(index, 'parent_id', value ?? '');

                            // Auto set location_id ke parent_id (default behavior)
                            if (value != null) {
                              onLocationChanged(index, 'location_id', value);
                            }
                          },
                        ),
                        const SizedBox(height: 12),

                        // Child Location Dropdown (Optional)
                        DropdownButtonFormField<String>(
                          value: (location['location_id'] != null &&
                                  location['location_id'].isNotEmpty &&
                                  location['location_id'] !=
                                      location['parent_id'] &&
                                  childLocations.any((loc) =>
                                      loc.id == location['location_id']))
                              ? location['location_id']
                              : null,
                          decoration: InputDecoration(
                            labelText: 'Pilih Area/Wilayah (Opsional)',
                            helperText: location['parent_id'] != null
                                ? 'Kosongkan jika ingin menggunakan seluruh area ${_getParentName(location['parent_id'])}'
                                : 'Pilih provinsi/kota terlebih dahulu',
                            border: const OutlineInputBorder(),
                          ),
                          hint: Text(location['parent_id'] == null ||
                                  location['parent_id'].isEmpty
                              ? 'Pilih provinsi/kota terlebih dahulu'
                              : 'Pilih area spesifik (opsional)'),
                          items: [
                            // Option untuk menggunakan seluruh area parent
                            if (location['parent_id'] != null &&
                                location['parent_id'].isNotEmpty)
                              DropdownMenuItem<String>(
                                value: '', // Empty value untuk reset ke parent
                                child: Text(
                                    'Seluruh area ${_getParentName(location['parent_id'])}'),
                              ),
                            // Child locations
                            ...childLocations
                                .where((loc) =>
                                    loc.parentId == location['parent_id'])
                                .map<DropdownMenuItem<String>>((loc) {
                              return DropdownMenuItem<String>(
                                value: loc.id,
                                child: Text(loc.name ?? ''),
                              );
                            }).toList(),
                          ],
                          onChanged: (location['parent_id'] == null ||
                                  location['parent_id'].isEmpty)
                              ? null
                              : (value) {
                                  if (value == null || value.isEmpty) {
                                    // Jika memilih "Seluruh area", gunakan parent_id
                                    onLocationChanged(index, 'location_id',
                                        location['parent_id'] ?? '');
                                  } else {
                                    // Jika memilih child spesifik
                                    onLocationChanged(
                                        index, 'location_id', value);
                                  }
                                },
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      initialValue: location['notes'],
                      decoration: const InputDecoration(
                        labelText: 'Catatan Lokasi',
                        hintText: 'Deskripsi atau catatan tentang lokasi',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                      onChanged: (value) {
                        onLocationChanged(index, 'notes', value);
                      },
                    ),
                  ],
                ),
              ),
            );
          }),
      ],
    );
  }

  // Helper method untuk mendapatkan nama parent
  String _getParentName(String? parentId) {
    if (parentId == null || parentId.isEmpty) return '';

    try {
      final parent = parentLocations.firstWhere(
        (loc) => loc.id == parentId,
      );
      return parent?.name ?? '';
    } catch (e) {
      // Jika tidak ditemukan, return empty string
      return '';
    }
  }
}
