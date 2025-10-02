import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../lib.dart';

@RoutePage()
class AdminCreateAnnouncementView extends StatefulWidget
    implements AutoRouteWrapper {
  const AdminCreateAnnouncementView({super.key});

  @override
  State<AdminCreateAnnouncementView> createState() =>
      _AdminCreateAnnouncementViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _AdminCreateAnnouncementViewState
    extends State<AdminCreateAnnouncementView> {
  final ImagePicker _picker = ImagePicker();
  final List<XFile> _selectedImages = [];
  String contentType = 'Artikel';
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  String priority = 'Medium';
  String target = 'Talent';
  final tagsController = TextEditingController();
  String? imageFileName;
  String schedule = '';

  bool get canPublish =>
      titleController.text.trim().isNotEmpty &&
      contentController.text.trim().isNotEmpty;
  Future<void> pickImage() async {
    try {
      final images = await _picker.pickMultiImage();
      if (images.isNotEmpty) {
        setState(() => _selectedImages.addAll(images));
      }
    } catch (e) {
      debugPrint('Gagal memilih gambar: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Tidak dapat mengakses galeri")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            HeaderCreateAnnouncment(),
            // Konten Scrollable
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Tipe Konten
                    Row(
                      children: [
                        _buildContentTypeButton('Pengumuman', Icons.campaign),
                        _buildContentTypeButton('Artikel', Icons.article),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Judul
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        labelText: 'Judul',
                        hintText: 'Masukkan judul artikel',
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 16),

                    // Konten
                    TextField(
                      controller: contentController,
                      decoration: const InputDecoration(
                        labelText: 'Konten',
                        alignLabelWithHint: true,
                        hintText: 'Masukkan konten',
                      ),
                      maxLines: 6,
                      onChanged: (_) => setState(() {}),
                    ),
                    const SizedBox(height: 16),

                    // Gambar Utama
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton.icon(
                              onPressed: pickImage,
                              icon: const Icon(Icons.image),
                              label: const Text("PILIH GAMBAR"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        if (_selectedImages.isNotEmpty)
                          SizedBox(
                            height: 100,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: _selectedImages.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 8),
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.file(
                                        File(_selectedImages[index].path),
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 4,
                                      right: 4,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() =>
                                              _selectedImages.removeAt(index));
                                        },
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black54,
                                          ),
                                          padding: const EdgeInsets.all(4),
                                          child: const Icon(Icons.close,
                                              size: 16, color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        else
                          const Text("Tidak ada gambar dipilih"),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Pengaturan
                    const Text("Pengaturan",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField(
                            value: priority,
                            decoration:
                                const InputDecoration(labelText: 'Prioritas'),
                            items: ['Low', 'Medium', 'High'].map((e) {
                              return DropdownMenuItem(value: e, child: Text(e));
                            }).toList(),
                            onChanged: (val) =>
                                setState(() => priority = val.toString()),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: DropdownButtonFormField(
                            value: target,
                            decoration: const InputDecoration(
                                labelText: 'Target Audience'),
                            items: ['Client', 'Talent'].map((e) {
                              return DropdownMenuItem(value: e, child: Text(e));
                            }).toList(),
                            onChanged: (val) =>
                                setState(() => target = val.toString()),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Tags
                    TextField(
                      controller: tagsController,
                      decoration: const InputDecoration(
                        labelText: 'Tags (pisahkan dengan koma)',
                        hintText: 'fashion, tips, update, penting',
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Jadwal Publikasi
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Jadwal Publikasi (Opsional)',
                        hintText: 'hh/bb/tttt --.--',
                      ),
                      onChanged: (val) => schedule = val,
                    ),
                    const SizedBox(height: 16),

                    // Tombol Aksi
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye),
                            label: const Text("PREVIEW"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.save),
                            label: const Text("SIMPAN DRAFT"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: canPublish ? () {} : null,
                            icon: const Icon(Icons.send),
                            label: const Text("PUBLISH"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    if (!canPublish)
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.warning, color: Colors.orange),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Judul dan konten harus diisi untuk mempublikasi",
                                style: TextStyle(color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Expanded _buildContentTypeButton(String label, IconData icon) {
    final isSelected = contentType == label;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() => contentType = label);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffFF6739) : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? Color(0xffFF6739) : Colors.grey.shade300,
                width: 1.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: isSelected ? Color(0xffFF6739) : Colors.grey),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: TextStyle(
                    color: isSelected ? Color(0xffFF6739) : Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
