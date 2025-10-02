import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../../../lib.dart';
import 'base_step.dart';

class Step5Roles extends BaseStep {
  final List<Map<String, dynamic>> roles;
  final Function() onAddRole;
  final Function(int) onRemoveRole;
  final Function(int, String, dynamic) onRoleChanged;

  const Step5Roles({
    super.key,
    required this.roles,
    required this.onAddRole,
    required this.onRemoveRole,
    required this.onRoleChanged,
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
              buildSectionTitle('Peran/Role'),
              ElevatedButton.icon(
                onPressed: onAddRole,
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
          ...roles.asMap().entries.map((entry) {
            final index = entry.key;
            final role = entry.value;

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
                          'Peran ${index + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => onRemoveRole(index),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Basic role fields
                    TextFormField(
                      initialValue: role['title'],
                      decoration: const InputDecoration(
                        labelText: 'Judul Peran',
                        hintText: 'Contoh: Pemeran Utama Pria',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        onRoleChanged(index, 'title', value);
                      },
                    ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: role['gender'],
                      decoration: const InputDecoration(
                        labelText: 'Jenis Kelamin',
                        border: OutlineInputBorder(),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'Male', child: Text('Pria')),
                        DropdownMenuItem(
                            value: 'Female', child: Text('Wanita')),
                        DropdownMenuItem(value: 'Any', child: Text('Bebas')),
                      ],
                      onChanged: (value) {
                        onRoleChanged(index, 'gender', value);
                      },
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: role['age_min']?.toString(),
                            decoration: const InputDecoration(
                              labelText: 'Usia Min',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              onRoleChanged(
                                  index, 'age_min', int.tryParse(value) ?? 0);
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            initialValue: role['age_max']?.toString(),
                            decoration: const InputDecoration(
                              labelText: 'Usia Max',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              onRoleChanged(
                                  index, 'age_max', int.tryParse(value) ?? 0);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Location fields
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: DropdownButtonFormField<String>(
                    //         value: (role['location_province_id'] != null &&
                    //                 role['location_province_id'].isNotEmpty)
                    //             ? role['location_province_id']
                    //             : null,
                    //         decoration: const InputDecoration(
                    //           labelText: 'Lokasi Provinsi/Kota',
                    //           border: OutlineInputBorder(),
                    //         ),
                    //         hint: const Text('Pilih provinsi/kota'),
                    //         items: parentLocations
                    //             .map<DropdownMenuItem<String>>((loc) {
                    //           return DropdownMenuItem<String>(
                    //             value: loc.id,
                    //             child: Text(loc.name ?? ''),
                    //           );
                    //         }).toList(),
                    //         onChanged: (value) {
                    //           onRoleChanged(
                    //               index, 'location_province_id', value ?? '');
                    //           // Reset area when province changes
                    //           onRoleChanged(index, 'location_area_id', '');
                    //         },
                    //       ),
                    //     ),
                    //     const SizedBox(width: 16),
                    //     Expanded(
                    //       child: DropdownButtonFormField<String>(
                    //         value: (role['location_area_id'] != null &&
                    //                 role['location_area_id'].isNotEmpty &&
                    //                 _getChildLocations(
                    //                         role['location_province_id'])
                    //                     .any((loc) =>
                    //                         loc.id == role['location_area_id']))
                    //             ? role['location_area_id']
                    //             : null,
                    //         decoration: const InputDecoration(
                    //           labelText: 'Area/Wilayah',
                    //           border: OutlineInputBorder(),
                    //         ),
                    //         hint: Text(role['location_province_id'] == null ||
                    //                 role['location_province_id'].isEmpty
                    //             ? 'Pilih provinsi terlebih dahulu'
                    //             : 'Pilih area/wilayah'),
                    //         items:
                    //             _getChildLocations(role['location_province_id'])
                    //                 .map<DropdownMenuItem<String>>((loc) {
                    //           return DropdownMenuItem<String>(
                    //             value: loc.id,
                    //             child: Text(loc.name ?? ''),
                    //           );
                    //         }).toList(),
                    //         onChanged: (role['location_province_id'] == null ||
                    //                 role['location_province_id'].isEmpty)
                    //             ? null
                    //             : (value) {
                    //                 onRoleChanged(
                    //                     index, 'location_area_id', value ?? '');
                    //               },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 12),
                    TextFormField(
                      initialValue: role['description'],
                      decoration: const InputDecoration(
                        labelText: 'Deskripsi Peran',
                        hintText:
                            'Jelaskan detail requirements untuk peran ini',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                      onChanged: (value) {
                        onRoleChanged(index, 'description', value);
                      },
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            initialValue: role['payment_amount'] != null &&
                                    role['payment_amount'] > 0
                                ? NumberFormat('#,###', 'id')
                                    .format(role['payment_amount'])
                                : '',
                            decoration: const InputDecoration(
                              labelText: 'Pembayaran',
                              border: OutlineInputBorder(),
                              prefixText: 'Rp ',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              CurrencyInputFormatter(),
                            ],
                            onChanged: (value) {
                              // Remove all non-digit characters and parse
                              String digits =
                                  value.replaceAll(RegExp(r'[^0-9]'), '');
                              onRoleChanged(index, 'payment_amount',
                                  int.tryParse(digits) ?? 0);
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: role['payment_type'],
                            decoration: const InputDecoration(
                              labelText: 'Per',
                              border: OutlineInputBorder(),
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'per day', child: Text('Hari')),
                              DropdownMenuItem(
                                  value: 'per project', child: Text('Proyek')),
                            ],
                            onChanged: (value) {
                              onRoleChanged(index, 'payment_type', value);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Additional Charges Section - Keep this part unchanged
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (role['additional_charges'] == null) {
                              onRoleChanged(index, 'additional_charges',
                                  <Map<String, dynamic>>[]);
                            } else {
                              onRoleChanged(index, 'additional_charges', null);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: role['additional_charges'] == null
                                ? Colors.orange
                                : Colors.red,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                          ),
                          child: Text(role['additional_charges'] == null
                              ? 'Tambah Additional Charges'
                              : 'Hapus Additional Charges'),
                        ),
                      ],
                    ),

                    // Keep the Additional Charges implementation but remove Closed Questions
                    if (role['additional_charges'] != null) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.orange.shade200),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Additional Charges',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    final currentCharges =
                                        List<Map<String, dynamic>>.from(
                                            role['additional_charges'] ?? []);
                                    currentCharges.add({
                                      'description': '',
                                      'amount': 0,
                                    });
                                    onRoleChanged(index, 'additional_charges',
                                        currentCharges);
                                  },
                                  icon: const Icon(Icons.add, size: 14),
                                  label: const Text('Tambah'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            // Additional charges implementation remains the same...
                            ...((role['additional_charges']
                                        as List<Map<String, dynamic>>?)
                                    ?.asMap()
                                    .entries
                                    .map((chargeEntry) {
                                  final chargeIndex = chargeEntry.key;
                                  final charge = chargeEntry.value;

                                  return Card(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Additional Charge ${chargeIndex + 1}',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.delete,
                                                    color: Colors.red,
                                                    size: 20),
                                                onPressed: () {
                                                  final currentCharges = List<
                                                          Map<String,
                                                              dynamic>>.from(
                                                      role['additional_charges'] ??
                                                          []);
                                                  currentCharges
                                                      .removeAt(chargeIndex);
                                                  onRoleChanged(
                                                      index,
                                                      'additional_charges',
                                                      currentCharges);
                                                },
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          TextFormField(
                                            initialValue: charge['description'],
                                            decoration: const InputDecoration(
                                              labelText: 'Deskripsi',
                                              hintText:
                                                  'Contoh: Biaya transportasi',
                                              border: OutlineInputBorder(),
                                            ),
                                            onChanged: (value) {
                                              final currentCharges = List<
                                                      Map<String,
                                                          dynamic>>.from(
                                                  role['additional_charges'] ??
                                                      []);
                                              currentCharges[chargeIndex]
                                                  ['description'] = value;
                                              onRoleChanged(
                                                  index,
                                                  'additional_charges',
                                                  currentCharges);
                                            },
                                          ),
                                          const SizedBox(height: 8),
                                          TextFormField(
                                            initialValue: charge['amount'] !=
                                                        null &&
                                                    charge['amount'] > 0
                                                ? NumberFormat('#,###', 'id')
                                                    .format(charge['amount'])
                                                : '',
                                            decoration: const InputDecoration(
                                              labelText: 'Nominal',
                                              border: OutlineInputBorder(),
                                              prefixText: 'Rp ',
                                            ),
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              CurrencyInputFormatter(),
                                            ],
                                            onChanged: (value) {
                                              final currentCharges = List<
                                                      Map<String,
                                                          dynamic>>.from(
                                                  role['additional_charges'] ??
                                                      []);
                                              String digits = value.replaceAll(
                                                  RegExp(r'[^0-9]'), '');
                                              currentCharges[chargeIndex]
                                                      ['amount'] =
                                                  int.tryParse(digits) ?? 0;
                                              onRoleChanged(
                                                  index,
                                                  'additional_charges',
                                                  currentCharges);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList() ??
                                []),
                            if ((role['additional_charges'] as List?)
                                    ?.isEmpty ==
                                true)
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Belum ada additional charge. Klik "Tambah" untuk menambahkan.',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }).toList(),
          if (roles.isEmpty)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Belum ada peran. Klik "Tambah" untuk menambahkan peran.',
                  style: TextStyle(color: Colors.grey.shade600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

}