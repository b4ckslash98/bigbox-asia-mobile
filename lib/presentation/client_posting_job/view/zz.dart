// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';
// import 'base_step.dart';

// class Step5Roles extends BaseStep {
//   final List<Map<String, dynamic>> roles;
//   final Function() onAddRole;
//   final Function(int) onRemoveRole;
//   final Function(int, String, dynamic) onRoleChanged;

//   const Step5Roles({
//     super.key,
//     required this.roles,
//     required this.onAddRole,
//     required this.onRemoveRole,
//     required this.onRoleChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final currencyFormatter = NumberFormat.currency(
//       locale: 'id',
//       symbol: 'Rp ',
//       decimalDigits: 0,
//     );

//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               buildSectionTitle('Peran/Role'),
//               ElevatedButton.icon(
//                 onPressed: onAddRole,
//                 icon: const Icon(Icons.add, size: 16),
//                 label: const Text('Tambah'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   foregroundColor: Colors.white,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           ...roles.asMap().entries.map((entry) {
//             final index = entry.key;
//             final role = entry.value;

//             return Card(
//               margin: const EdgeInsets.only(bottom: 16),
//               elevation: 2,
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Peran ${index + 1}',
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         IconButton(
//                           icon: const Icon(Icons.delete, color: Colors.red),
//                           onPressed: () => onRemoveRole(index),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 12),

//                     // Title
//                     TextFormField(
//                       initialValue: role['title'],
//                       decoration: const InputDecoration(
//                         labelText: 'Judul Peran',
//                         hintText: 'Contoh: Pemeran Utama Pria',
//                         border: OutlineInputBorder(),
//                       ),
//                       onChanged: (value) {
//                         onRoleChanged(index, 'title', value);
//                       },
//                     ),
//                     const SizedBox(height: 12),

//                     // Gender
//                     DropdownButtonFormField<String>(
//                       value: role['gender'],
//                       decoration: const InputDecoration(
//                         labelText: 'Jenis Kelamin',
//                         border: OutlineInputBorder(),
//                       ),
//                       items: const [
//                         DropdownMenuItem(value: 'Male', child: Text('Pria')),
//                         DropdownMenuItem(
//                             value: 'Female', child: Text('Wanita')),
//                         DropdownMenuItem(value: 'Any', child: Text('Bebas')),
//                       ],
//                       onChanged: (value) {
//                         onRoleChanged(index, 'gender', value);
//                       },
//                     ),
//                     const SizedBox(height: 12),

//                     // Age Range
//                     Row(
//                       children: [
//                         Expanded(
//                           child: TextFormField(
//                             initialValue: role['age_min']?.toString(),
//                             decoration: const InputDecoration(
//                               labelText: 'Usia Min',
//                               border: OutlineInputBorder(),
//                             ),
//                             keyboardType: TextInputType.number,
//                             inputFormatters: [
//                               FilteringTextInputFormatter.digitsOnly
//                             ],
//                             onChanged: (value) {
//                               onRoleChanged(
//                                   index, 'age_min', int.tryParse(value) ?? 0);
//                             },
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: TextFormField(
//                             initialValue: role['age_max']?.toString(),
//                             decoration: const InputDecoration(
//                               labelText: 'Usia Max',
//                               border: OutlineInputBorder(),
//                             ),
//                             keyboardType: TextInputType.number,
//                             inputFormatters: [
//                               FilteringTextInputFormatter.digitsOnly
//                             ],
//                             onChanged: (value) {
//                               onRoleChanged(
//                                   index, 'age_max', int.tryParse(value) ?? 0);
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 12),

//                     // Description
//                     TextFormField(
//                       initialValue: role['description'],
//                       decoration: const InputDecoration(
//                         labelText: 'Deskripsi Peran',
//                         hintText:
//                             'Jelaskan detail requirements untuk peran ini',
//                         border: OutlineInputBorder(),
//                       ),
//                       maxLines: 3,
//                       onChanged: (value) {
//                         onRoleChanged(index, 'description', value);
//                       },
//                     ),
//                     const SizedBox(height: 12),

//                     // Payment
//                     Row(
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: TextFormField(
//                             initialValue: role['payment_amount']?.toString(),
//                             decoration: const InputDecoration(
//                               labelText: 'Pembayaran',
//                               border: OutlineInputBorder(),
//                               prefixText: 'Rp ',
//                             ),
//                             keyboardType: TextInputType.number,
//                             inputFormatters: [
//                               FilteringTextInputFormatter.digitsOnly
//                             ],
//                             onChanged: (value) {
//                               onRoleChanged(index, 'payment_amount',
//                                   int.tryParse(value) ?? 0);
//                             },
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: DropdownButtonFormField<String>(
//                             value: role['payment_type'],
//                             decoration: const InputDecoration(
//                               labelText: 'Per',
//                               border: OutlineInputBorder(),
//                             ),
//                             items: const [
//                               DropdownMenuItem(
//                                   value: 'per day', child: Text('Hari')),
//                               DropdownMenuItem(
//                                   value: 'per project', child: Text('Proyek')),
//                               DropdownMenuItem(
//                                   value: 'per hour', child: Text('Jam')),
//                             ],
//                             onChanged: (value) {
//                               onRoleChanged(index, 'payment_type', value);
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 12),

//                     // Count needed
//                     TextFormField(
//                       initialValue: role['count_needed']?.toString(),
//                       decoration: const InputDecoration(
//                         labelText: 'Jumlah Yang Dibutuhkan',
//                         border: OutlineInputBorder(),
//                       ),
//                       keyboardType: TextInputType.number,
//                       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                       onChanged: (value) {
//                         onRoleChanged(
//                             index, 'count_needed', int.tryParse(value) ?? 1);
//                       },
//                     ),
//                     const SizedBox(height: 16),

//                     // Additional Charge Section
//                     Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             if (role['additional_charge'] == null) {
//                               // Add additional charge
//                               final newAdditionalCharge = {
//                                 'description': '',
//                                 'amount': 0,
//                               };
//                               onRoleChanged(index, 'additional_charge',
//                                   newAdditionalCharge);
//                             } else {
//                               // Remove additional charge
//                               onRoleChanged(index, 'additional_charge', null);
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: role['additional_charge'] == null
//                                 ? Colors.orange
//                                 : Colors.red,
//                             foregroundColor: Colors.white,
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 16, vertical: 12),
//                           ),
//                           child: Text(role['additional_charge'] == null
//                               ? 'Tambah Additional Charge'
//                               : 'Hapus Additional Charge'),
//                         ),
//                       ],
//                     ),

//                     // Additional Charge Fields
//                     if (role['additional_charge'] != null) ...[
//                       const SizedBox(height: 12),
//                       Container(
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.orange.shade50,
//                           borderRadius: BorderRadius.circular(8),
//                           border: Border.all(color: Colors.orange.shade200),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               'Additional Charge',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             TextFormField(
//                               initialValue: role['additional_charge']
//                                   ['description'],
//                               decoration: const InputDecoration(
//                                 labelText: 'Deskripsi Additional Charge',
//                                 hintText:
//                                     'Contoh: Biaya tambahan untuk properti',
//                                 border: OutlineInputBorder(),
//                               ),
//                               onChanged: (value) {
//                                 final currentCharge = Map<String, dynamic>.from(
//                                     role['additional_charge']);
//                                 currentCharge['description'] = value;
//                                 onRoleChanged(
//                                     index, 'additional_charge', currentCharge);
//                               },
//                             ),
//                             const SizedBox(height: 12),
//                             TextFormField(
//                               initialValue: role['additional_charge']['amount']
//                                   ?.toString(),
//                               decoration: const InputDecoration(
//                                 labelText: 'Nominal Additional Charge',
//                                 hintText: 'Contoh: 100000',
//                                 border: OutlineInputBorder(),
//                                 prefixText: 'Rp ',
//                               ),
//                               keyboardType: TextInputType.number,
//                               inputFormatters: [
//                                 FilteringTextInputFormatter.digitsOnly
//                               ],
//                               onChanged: (value) {
//                                 final currentCharge = Map<String, dynamic>.from(
//                                     role['additional_charge']);
//                                 currentCharge['amount'] =
//                                     int.tryParse(value) ?? 0;
//                                 onRoleChanged(
//                                     index, 'additional_charge', currentCharge);
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],

//                     const SizedBox(height: 16),

//                     // Closed Questions Section
//                     Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             if (role['closed_questions'] == null) {
//                               // Initialize closed questions
//                               onRoleChanged(index, 'closed_questions',
//                                   <Map<String, dynamic>>[]);
//                             } else {
//                               // Remove closed questions
//                               onRoleChanged(index, 'closed_questions', null);
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: role['closed_questions'] == null
//                                 ? Colors.blue
//                                 : Colors.red,
//                             foregroundColor: Colors.white,
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 16, vertical: 12),
//                           ),
//                           child: Text(role['closed_questions'] == null
//                               ? 'Tambah Closed Questions'
//                               : 'Hapus Closed Questions'),
//                         ),
//                       ],
//                     ),

//                     // Closed Questions Fields
//                     if (role['closed_questions'] != null) ...[
//                       const SizedBox(height: 12),
//                       Container(
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.blue.shade50,
//                           borderRadius: BorderRadius.circular(8),
//                           border: Border.all(color: Colors.blue.shade200),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 const Text(
//                                   'Closed Questions',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                                 ElevatedButton.icon(
//                                   onPressed: () {
//                                     final currentQuestions =
//                                         List<Map<String, dynamic>>.from(
//                                             role['closed_questions'] ?? []);
//                                     currentQuestions.add({
//                                       'question': '',
//                                       'yes_or_no_question': true,
//                                     });
//                                     onRoleChanged(index, 'closed_questions',
//                                         currentQuestions);
//                                   },
//                                   icon: const Icon(Icons.add, size: 14),
//                                   label: const Text('Tambah'),
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.blue,
//                                     foregroundColor: Colors.white,
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 8, vertical: 4),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 12),
//                             ...((role['closed_questions']
//                                         as List<Map<String, dynamic>>?)
//                                     ?.asMap()
//                                     .entries
//                                     .map((questionEntry) {
//                                   final qIndex = questionEntry.key;
//                                   final question = questionEntry.value;

//                                   return Card(
//                                     margin: const EdgeInsets.only(bottom: 8),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(12),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Text(
//                                                 'Pertanyaan ${qIndex + 1}',
//                                                 style: const TextStyle(
//                                                   fontWeight: FontWeight.bold,
//                                                 ),
//                                               ),
//                                               IconButton(
//                                                 icon: const Icon(Icons.delete,
//                                                     color: Colors.red,
//                                                     size: 20),
//                                                 onPressed: () {
//                                                   final currentQuestions = List<
//                                                           Map<String,
//                                                               dynamic>>.from(
//                                                       role['closed_questions'] ??
//                                                           []);
//                                                   currentQuestions
//                                                       .removeAt(qIndex);
//                                                   onRoleChanged(
//                                                       index,
//                                                       'closed_questions',
//                                                       currentQuestions);
//                                                 },
//                                               ),
//                                             ],
//                                           ),
//                                           const SizedBox(height: 8),
//                                           TextFormField(
//                                             initialValue: question['question'],
//                                             decoration: const InputDecoration(
//                                               labelText: 'Pertanyaan',
//                                               hintText:
//                                                   'Contoh: Apakah Anda memiliki pengalaman acting?',
//                                               border: OutlineInputBorder(),
//                                             ),
//                                             onChanged: (value) {
//                                               final currentQuestions = List<
//                                                       Map<String,
//                                                           dynamic>>.from(
//                                                   role['closed_questions'] ??
//                                                       []);
//                                               currentQuestions[qIndex]
//                                                   ['question'] = value;
//                                               onRoleChanged(
//                                                   index,
//                                                   'closed_questions',
//                                                   currentQuestions);
//                                             },
//                                           ),
//                                           const SizedBox(height: 8),
//                                           Row(
//                                             children: [
//                                               Checkbox(
//                                                 value: question[
//                                                         'yes_or_no_question'] ??
//                                                     true,
//                                                 onChanged: (value) {
//                                                   final currentQuestions = List<
//                                                           Map<String,
//                                                               dynamic>>.from(
//                                                       role['closed_questions'] ??
//                                                           []);
//                                                   currentQuestions[qIndex][
//                                                           'yes_or_no_question'] =
//                                                       value ?? true;
//                                                   onRoleChanged(
//                                                       index,
//                                                       'closed_questions',
//                                                       currentQuestions);
//                                                 },
//                                               ),
//                                               const Text('Pertanyaan Ya/Tidak'),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 }).toList() ??
//                                 []),
//                             if ((role['closed_questions'] as List?)?.isEmpty ==
//                                 true)
//                               const Center(
//                                 child: Padding(
//                                   padding: EdgeInsets.all(16.0),
//                                   child: Text(
//                                     'Belum ada pertanyaan. Klik "Tambah" untuk menambahkan pertanyaan.',
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ],
//                 ),
//               ),
//             );
//           }).toList(),
//           if (roles.isEmpty)
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Text(
//                   'Belum ada peran. Klik "Tambah" untuk menambahkan peran.',
//                   style: TextStyle(color: Colors.grey.shade600),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
