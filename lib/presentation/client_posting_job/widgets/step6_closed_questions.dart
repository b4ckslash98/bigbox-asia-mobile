import 'package:flutter/material.dart';
import 'base_step.dart';

class Step6ClosedQuestions extends BaseStep {
  final List<Map<String, dynamic>> closedQuestions;
  final Function() onAddClosedQuestion;
  final Function(int) onRemoveClosedQuestion;
  final Function(int, String, dynamic) onClosedQuestionChanged;

  const Step6ClosedQuestions({
    super.key,
    required this.closedQuestions,
    required this.onAddClosedQuestion,
    required this.onRemoveClosedQuestion,
    required this.onClosedQuestionChanged,
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
              buildSectionTitle('Pertanyaan Tertutup'),
              ElevatedButton.icon(
                onPressed: onAddClosedQuestion,
                icon: const Icon(Icons.add, size: 16),
                label: const Text('Tambah'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          if (closedQuestions.isEmpty)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.quiz_outlined,
                      size: 64,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Belum ada pertanyaan tertutup.',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Pertanyaan tertutup akan ditampilkan kepada talent saat mereka apply ke job Anda.',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Klik "Tambah" untuk menambahkan pertanyaan.',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          else
            ...closedQuestions.asMap().entries.map((entry) {
              final index = entry.key;
              final question = entry.value;

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
                            'Pertanyaan ${index + 1}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => onRemoveClosedQuestion(index),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        initialValue: question['question'],
                        decoration: const InputDecoration(
                          labelText: 'Pertanyaan',
                          hintText:
                              'Contoh: Apakah Anda memiliki pengalaman acting?',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 2,
                        onChanged: (value) {
                          onClosedQuestionChanged(index, 'question', value);
                        },
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.purple.shade200),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tipe Pertanyaan:',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 8),
                            RadioListTile<bool>(
                              title: const Text('Ya/Tidak'),
                              subtitle: const Text(
                                  'Talent akan menjawab dengan Ya atau Tidak'),
                              value: true,
                              groupValue:
                                  question['yes_or_no_question'] ?? true,
                              onChanged: (value) {
                                onClosedQuestionChanged(
                                    index, 'yes_or_no_question', value ?? true);
                              },
                              activeColor: Colors.purple,
                              contentPadding: EdgeInsets.zero,
                            ),
                            RadioListTile<bool>(
                              title: const Text('Teks Bebas'),
                              subtitle: const Text(
                                  'Talent akan menjawab dengan teks bebas'),
                              value: false,
                              groupValue:
                                  question['yes_or_no_question'] ?? true,
                              onChanged: (value) {
                                onClosedQuestionChanged(
                                    index, 'yes_or_no_question', value ?? true);
                              },
                              activeColor: Colors.purple,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),

          const SizedBox(height: 24),

          // Info card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.blue.shade700,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Informasi Pertanyaan Tertutup',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '• Pertanyaan tertutup akan ditampilkan kepada talent saat mereka apply ke job Anda\n'
                  '• Gunakan pertanyaan tertutup untuk menyaring talent berdasarkan kriteria tertentu\n'
                  '• Jawaban talent akan membantu Anda dalam proses seleksi',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
