import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';

class Step1ProjectDetails extends BaseStep {
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final List<String> selectedCategories;
  final Function(String) onCategoryChanged;

  const Step1ProjectDetails({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.selectedCategories,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionTitle('Detail Job'),
          const SizedBox(height: 16),

          buildTextField(
            label: 'Judul Job',
            hintText: 'Misalnya: Iklan Produk Minuman Energi',
            controller: titleController,
          ),
          const SizedBox(height: 16),

          buildTextField(
            label: 'Deskripsi Job',
            hintText: 'Jelaskan secara detail Job iklan yang dibutuhkan',
            maxLines: 5,
            controller: descriptionController,
          ),
          const SizedBox(height: 16),

          // Categories section
          // Categories section
          buildSectionTitle('Kategori'),
          const SizedBox(height: 8),
          BlocBuilder<ClientPostingJobCubit, ClientPostingJobState>(
            builder: (context, state) {
              if (state.categories?.data?.isNotEmpty == true) {
                return Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: state.categories!.data!.map((category) {
                    final isSelected = selectedCategories.contains(category.id);
                    return ChoiceChip(
                      label: Text(category.name ?? ''),
                      selected: isSelected,
                      onSelected: (bool selected) {
                        onCategoryChanged(category.id!);
                      },
                      backgroundColor: Colors.grey.shade100,
                      selectedColor: Colors.orange.shade200,
                      side: BorderSide(
                        color: isSelected
                            ? Colors.orange.shade400
                            : Colors.grey.shade300,
                      ),
                      labelStyle: TextStyle(
                        color: isSelected
                            ? Colors.orange.shade800
                            : Colors.grey.shade700,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    );
                  }).toList(),
                );
              } else {
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Tidak ada kategori tersedia',
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              }
            },
          ),

          // Tips section
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tips:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '• Judul yang spesifik akan membantu talent memahami job\n'
                  '• Jelaskan dengan detail konsep iklan yang akan dibuat\n'
                  '• Cantumkan informasi penting tentang produk yang diiklankan',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
