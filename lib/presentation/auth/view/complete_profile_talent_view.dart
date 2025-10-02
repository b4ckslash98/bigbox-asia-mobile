import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bigbox_asia/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import '../../../lib.dart';

@RoutePage()
class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  final _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();

  // Basic Info Controllers
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _ageController = TextEditingController();
  final _ageCastingMinController = TextEditingController();
  final _ageCastingMaxController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _ukuranBajuController = TextEditingController();
  final _ukuranCelanaController = TextEditingController();
  final _ukuranSepatuController = TextEditingController();
  final _sukuController = TextEditingController();
  final _warnaKulitController = TextEditingController();
  final _locationIdController = TextEditingController();

  // Social Media Controllers
  final _instagramUsernameController = TextEditingController();
  final _instagramFollowerController = TextEditingController();
  final _tiktokUsernameController = TextEditingController();
  final _tiktokFollowerController = TextEditingController();
  final _youtubeUsernameController = TextEditingController();
  final _youtubeFollowerController = TextEditingController();
  final _threadsUsernameController = TextEditingController();
  final _threadsFollowerController = TextEditingController();
  final _facebookUsernameController = TextEditingController();
  final _facebookFollowerController = TextEditingController();

  // Date and Selections
  DateTime? _birthDate;
  String? _selectedGender;
  bool _isPassport = false;
  bool _isNpwp = false;
  String? _photoProfile;
  int _passportStatus = 0; // 0 = Tidak, 1 = Ya
  int _npwpStatus = 0;
  // Dynamic Lists
  List<Map<String, String>> _userLanguages = [];
  List<Map<String, String>> _photos = [];
  List<Map<String, String>> _videos = [];
  List<Map<String, dynamic>> _interestCategories = [];
  List<Map<String, String>> _experiences = [];
  List<int> _castingAgeOptions = [];
  List<List<int>> _castingAgeRanges = [];
  List<int>? _selectedCastingRange;
  String? _selectedSuku;
  String? _selectedWarnaKulit;
  String? _selectedWarganegara;
  String? _selectedWorkPermit;
//lokasi
  List<dynamic> _locations = [];
  List<dynamic> _parentLocations = [];
  List<dynamic> _childLocations = [];
  String? _selectedParentId;
  String? _selectedChildId;
  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _ageController.dispose();
    _ageCastingMinController.dispose();
    _ageCastingMaxController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _ukuranBajuController.dispose();
    _ukuranCelanaController.dispose();
    _ukuranSepatuController.dispose();
    _sukuController.dispose();
    _warnaKulitController.dispose();
    _locationIdController.dispose();
    _instagramUsernameController.dispose();
    _instagramFollowerController.dispose();
    _tiktokUsernameController.dispose();
    _tiktokFollowerController.dispose();
    _youtubeUsernameController.dispose();
    _youtubeFollowerController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _fetchInit();
  }

  Future<void> _fetchInit() async {
    final authCubit = context.read<AuthCubit>();
    await authCubit.getLocation();
    await authCubit.getCategories();

    final locationData = authCubit.state.location?.data ?? [];
    setState(() {
      _locations = locationData;
      _parentLocations =
          locationData.where((loc) => loc.parentId == null).toList();
      _childLocations = [];
      _selectedParentId = null;
      _selectedChildId = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Profile'),
      ),
      body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        return Form(
          key: _formKey,
          child: SingleChildScrollView(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lengkapi Profile mu agar bisa mulai melanjutkan di BigBox',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                _buildBasicInfoSection(),
                const SizedBox(height: 24),
                _buildPhysicalInfoSection(),
                const SizedBox(height: 24),
                _buildSocialMediaSection(),
                const SizedBox(height: 24),
                _buildInterestCategoriesSection(state),
                const SizedBox(height: 24),
                _buildDocumentsSection(),
                const SizedBox(height: 24),
                _buildLanguagesSection(),
                const SizedBox(height: 24),
                _buildPhotosSection(),
                const SizedBox(height: 24),
                _buildVideosSection(),
                const SizedBox(height: 24),
                _buildExperiencesSection(),
                const SizedBox(height: 24),
                _buildSubmitButton(),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildInterestCategoriesSection(AuthState state) {
    final categories = state.categories?.data ?? [];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Interest Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${_interestCategories.length}/4',
                  style: TextStyle(
                    color: _interestCategories.length >= 4
                        ? Colors.red
                        : Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (_interestCategories.length >= 4)
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.shade300),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info_outline,
                        color: Colors.orange.shade700, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Maksimal 4 kategori yang dapat dipilih',
                        style: TextStyle(
                          color: Colors.orange.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: categories.map<Widget>((cat) {
                final isSelected = _interestCategories
                    .any((e) => e['job_categories_id'] == cat.id);
                final canSelect = _interestCategories.length < 4 || isSelected;

                return FilterChip(
                  label: Text(cat.name ?? ''),
                  selected: isSelected,
                  onSelected: canSelect
                      ? (selected) {
                          setState(() {
                            if (selected) {
                              // Tentukan budget berdasarkan kategori
                              Map<String, dynamic> categoryData = {
                                'job_categories_id': cat.id,
                              };

                              // Cek jika kategori memerlukan min/max budget
                              if (_isMinMaxCategory(cat.name?.toLowerCase())) {
                                categoryData['budget_min'] = 0;
                                categoryData['budget_max'] = 0;
                              } else {
                                // Kategori lain hanya budget minimal (tapi tetap kirim min/max dengan nilai sama)
                                categoryData['budget_min'] = 0;
                                categoryData['budget_max'] = 0;
                              }

                              _interestCategories.add(categoryData);
                            } else {
                              _interestCategories.removeWhere(
                                  (e) => e['job_categories_id'] == cat.id);
                            }
                          });
                        }
                      : null,
                  selectedColor: Colors.orange.shade200,
                  checkmarkColor: Colors.orange.shade800,
                  backgroundColor: canSelect ? null : Colors.grey.shade200,
                  labelStyle: TextStyle(
                    color: canSelect ? null : Colors.grey.shade500,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ..._interestCategories.asMap().entries.map((entry) {
              final idx = entry.key;
              final item = entry.value;
              final catName = categories
                      .firstWhere((c) => c.id == item['job_categories_id'])
                      .name ??
                  '';

              final isMinMaxCategory = _isMinMaxCategory(catName.toLowerCase());

              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(catName,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      if (isMinMaxCategory) ...[
                        // Tampilkan Budget Min & Max untuk kategori tertentu
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                initialValue: item['budget_min'].toString(),
                                decoration: const InputDecoration(
                                  labelText: 'Budget Min (Rp)',
                                  border: OutlineInputBorder(),
                                  prefixText: 'Rp ',
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (val) {
                                  setState(() {
                                    _interestCategories[idx]['budget_min'] =
                                        int.tryParse(val.replaceAll(
                                                RegExp(r'[^0-9]'), '')) ??
                                            0;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextFormField(
                                initialValue: item['budget_max'].toString(),
                                decoration: const InputDecoration(
                                  labelText: 'Budget Max (Rp)',
                                  border: OutlineInputBorder(),
                                  prefixText: 'Rp ',
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (val) {
                                  setState(() {
                                    _interestCategories[idx]['budget_max'] =
                                        int.tryParse(val.replaceAll(
                                                RegExp(r'[^0-9]'), '')) ??
                                            0;
                                  });
                                },
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                setState(() {
                                  _interestCategories.removeAt(idx);
                                });
                              },
                            ),
                          ],
                        ),
                      ] else ...[
                        // Tampilkan hanya Budget Minimal untuk kategori lain
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                initialValue: item['budget_min'].toString(),
                                decoration: const InputDecoration(
                                  labelText: 'Budget Minimal (Rp)',
                                  border: OutlineInputBorder(),
                                  prefixText: 'Rp ',
                                  helperText: 'Budget untuk kategori ini',
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (val) {
                                  final budgetValue = int.tryParse(val
                                          .replaceAll(RegExp(r'[^0-9]'), '')) ??
                                      0;
                                  setState(() {
                                    // Set min dan max dengan nilai yang sama
                                    _interestCategories[idx]['budget_min'] =
                                        budgetValue;
                                    _interestCategories[idx]['budget_max'] =
                                        budgetValue;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                setState(() {
                                  _interestCategories.removeAt(idx);
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.blue.shade200),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.info_outline,
                                  color: Colors.blue.shade600, size: 16),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Budget yang dimasukkan akan menjadi minimal patokan fee untuk kategori ini',
                                  style: TextStyle(
                                    color: Colors.blue.shade600,
                                    fontSize: 11,
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
            }),
          ],
        ),
      ),
    );
  }

  Future<void> _pickExperienceMedia(int index, {required bool isVideo}) async {
    final ImagePicker picker = ImagePicker();
    XFile? file;

    if (isVideo) {
      file = await picker.pickVideo(source: ImageSource.gallery);
    } else {
      file = await picker.pickImage(source: ImageSource.gallery);
    }

    if (file != null) {
      final result =
          await context.read<AuthCubit>().uploadFile(File(file.path));
      if (result != null && result['status'] == 'Success') {
        final url = result['data']['url'];
        setState(() {
          _experiences[index]['video_url'] =
              url; // Store both photo and video URL in video_url field
        });
      } else {
        Fluttertoast.showToast(
            msg: 'Failed to upload ${isVideo ? 'video' : 'photo'}');
      }
    }
  }

// Helper method untuk menentukan kategori yang memerlukan min/max budget
  bool _isMinMaxCategory(String? categoryName) {
    if (categoryName == null) return false;

    final minMaxCategories = ['iklan', 'usher', 'spg'];
    return minMaxCategories.any((cat) => categoryName.contains(cat));
  }

  Widget _buildExperiencesSection() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final categories = state.categories?.data ?? [];

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Experiences',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _experiences.add({
                            'category_id': '', // Store category ID for lookup
                            'title': '', // Will be filled with category name
                            'description': '',
                            'video_url': '', // Stores both photo and video URLs
                          });
                        });
                      },
                      icon: const Icon(Icons.add),
                      tooltip: 'Add Experience',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                if (_experiences.isEmpty)
                  Center(
                    child: Text(
                      'No experiences yet.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ..._experiences.asMap().entries.map((entry) {
                  final index = entry.key;
                  final exp = entry.value;

                  // Find category name for display
                  DataGetCategoriesResponse? selectedCategory;
                  try {
                    selectedCategory = categories.firstWhere(
                      (cat) => cat.id == exp['category_id'],
                    );
                  } catch (e) {
                    selectedCategory = null;
                  }

                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Dropdown for categories
                          DropdownButtonFormField<String>(
                            value: exp['category_id']?.isNotEmpty == true
                                ? exp['category_id']
                                : null,
                            decoration: const InputDecoration(
                              labelText: 'Category *',
                              border: OutlineInputBorder(),
                              hintText: 'Select category',
                            ),
                            items:
                                categories.map<DropdownMenuItem<String>>((cat) {
                              return DropdownMenuItem<String>(
                                value: cat.id,
                                child: Text(cat.name ?? 'Unknown Category'),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _experiences[index]['category_id'] =
                                    value ?? '';
                                // Update title with category name
                                DataGetCategoriesResponse? selectedCat;
                                try {
                                  selectedCat = categories.firstWhere(
                                    (cat) => cat.id == value,
                                  );
                                } catch (e) {
                                  selectedCat = null;
                                }
                                _experiences[index]['title'] =
                                    selectedCat?.name ?? '';
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select a category';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),

                          // Description field
                          TextFormField(
                            initialValue: exp['description'],
                            decoration: const InputDecoration(
                              labelText: 'Description *',
                              border: OutlineInputBorder(),
                              hintText: 'Describe your experience...',
                            ),
                            maxLines: 3,
                            onChanged: (val) {
                              _experiences[index]['description'] = val;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter description';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),

                          // Media selection section with both photo and video options
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      exp['video_url'] != null &&
                                              exp['video_url']!.isNotEmpty
                                          ? Icons.check_circle
                                          : Icons.radio_button_unchecked,
                                      color: exp['video_url'] != null &&
                                              exp['video_url']!.isNotEmpty
                                          ? Colors.green
                                          : Colors.grey,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        exp['video_url'] != null &&
                                                exp['video_url']!.isNotEmpty
                                            ? 'Media selected'
                                            : 'No media selected',
                                        style: TextStyle(
                                          color: exp['video_url'] != null &&
                                                  exp['video_url']!.isNotEmpty
                                              ? Colors.green.shade700
                                              : Colors.grey.shade600,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),

                                // Media action buttons
                                Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton.icon(
                                        onPressed: () => _pickExperienceMedia(
                                            index,
                                            isVideo: false),
                                        icon: const Icon(Icons.photo_library,
                                            size: 18),
                                        label: const Text('Photo',
                                            style: TextStyle(fontSize: 12)),
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          side: BorderSide(
                                              color: Colors.blue.shade300),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: OutlinedButton.icon(
                                        onPressed: () => _pickExperienceMedia(
                                            index,
                                            isVideo: true),
                                        icon: const Icon(Icons.videocam,
                                            size: 18),
                                        label: const Text('Video',
                                            style: TextStyle(fontSize: 12)),
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          side: BorderSide(
                                              color: Colors.green.shade300),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red, size: 20),
                                      tooltip: 'Remove Experience',
                                      onPressed: () {
                                        setState(() {
                                          _experiences.removeAt(index);
                                        });
                                      },
                                    ),
                                  ],
                                ),

                                // Show selected media info
                                if (exp['video_url'] != null &&
                                    exp['video_url']!.isNotEmpty) ...[
                                  const SizedBox(height: 8),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade50,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: Colors.green.shade200),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.attachment,
                                            color: Colors.green.shade600,
                                            size: 16),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            'Media URL: ${exp['video_url']}',
                                            style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontSize: 11,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.clear,
                                              color: Colors.red.shade600,
                                              size: 16),
                                          tooltip: 'Remove Media',
                                          onPressed: () {
                                            setState(() {
                                              _experiences[index]['video_url'] =
                                                  '';
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),

                          // Show selected category info
                          if (selectedCategory != null) ...[
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.blue.shade200),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.category,
                                      color: Colors.blue.shade600, size: 16),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Title: ${selectedCategory.name ?? 'Unknown'}',
                                      style: TextStyle(
                                        color: Colors.blue.shade600,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                }),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBasicInfoSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Basic Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Full Name *',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) async {
                if (value.isNotEmpty && value[0] != value[0].toUpperCase()) {
                  _nameController.value = TextEditingValue(
                    text: value[0].toUpperCase() + value.substring(1),
                    selection: TextSelection.collapsed(offset: value.length),
                  );
                }

                // Auto-generate username from full name
                if (value.isNotEmpty) {
                  final authCubit = context.read<AuthCubit>();
                  await authCubit.convertStringName(value);

                  // Update username field with converted name
                  final convertedName = authCubit.state.convertedName;
                  if (convertedName != null) {
                    _usernameController.text = convertedName;
                    _usernameController.selection = TextSelection.collapsed(
                      offset: convertedName.length,
                    );
                  }
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username *',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number *',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: _selectBirthDate,
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Birth Date *',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  _birthDate != null
                      ? '${_birthDate!.day}/${_birthDate!.month}/${_birthDate!.year}'
                      : 'Select birth date',
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedGender,
              decoration: const InputDecoration(
                labelText: 'Gender *',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'male', child: Text('Male')),
                DropdownMenuItem(value: 'female', child: Text('Female')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedGender = value;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select gender';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedParentId,
              decoration: const InputDecoration(
                labelText: 'Provinsi/Kota *',
                border: OutlineInputBorder(),
              ),
              items: _parentLocations.map<DropdownMenuItem<String>>((loc) {
                return DropdownMenuItem<String>(
                  value: loc.id,
                  child: Text(loc.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedParentId = value;
                  _childLocations =
                      _locations.where((loc) => loc.parentId == value).toList();
                  _selectedChildId = null;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Pilih provinsi/kota';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedChildId,
              decoration: const InputDecoration(
                labelText: 'Kecamatan/Kota *',
                border: OutlineInputBorder(),
              ),
              items: _childLocations.map<DropdownMenuItem<String>>((loc) {
                return DropdownMenuItem<String>(
                  value: loc.id,
                  child: Text(loc.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedChildId = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Pilih kecamatan/kota';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  void _addUniqueRange(List<int> range, Set<String> rangeKeys) {
    String key = "${range[0]}-${range[1]}";
    if (!rangeKeys.contains(key)) {
      rangeKeys.add(key);
      _castingAgeRanges.add(range);
    }
  }

  void _generateCastingAgeRanges() {
    final age = int.tryParse(_ageController.text) ?? 0;

    // Reset data sebelumnya
    _castingAgeRanges.clear();
    _selectedCastingRange = null;

    // Validasi usia minimal
    if (age < 0) {
      return;
    }

    // Set untuk mencegah duplikasi range
    Set<String> rangeKeys = Set<String>();

    // Untuk usia 0-5 tahun
    if (age >= 0 && age <= 5) {
      if (age == 0) {
        _addUniqueRange([0, 1], rangeKeys);
      } else if (age >= 1 && age <= 2) {
        _addUniqueRange([0, 2], rangeKeys);
        _addUniqueRange([1, 3], rangeKeys);
      } else if (age >= 3 && age <= 5) {
        _addUniqueRange([age - 1, age + 1], rangeKeys);
        _addUniqueRange([age, age + 2], rangeKeys);
        if (age > 3) {
          _addUniqueRange([age - 2, age], rangeKeys);
        }
      }
    } else {
      // Untuk usia 6+ tahun
      int range = 2;

      if (age >= 6 && age <= 10) {
        range = 2;
      } else if (age >= 11 && age <= 20) {
        range = 3;
      } else if (age >= 21 && age <= 30) {
        range = 4;
      } else if (age >= 31 && age <= 40) {
        range = 5;
      } else if (age >= 41 && age <= 50) {
        range = 6;
      } else if (age >= 51 && age <= 60) {
        range = 7;
      } else if (age >= 61) {
        range = 8;
      }

      // Buat pilihan range berurutan
      for (int i = age - range + 1; i <= age; i++) {
        int min = i;
        int max = i + range - 1;

        if (min >= 1) {
          _addUniqueRange([min, max], rangeKeys);
        }
      }
    }

    // Jika tidak ada range yang valid, buat range default
    if (_castingAgeRanges.isEmpty) {
      _addUniqueRange([age, age], rangeKeys);
    }

    // Default pilih range yang mengandung usia asli
    _selectedCastingRange = _castingAgeRanges.firstWhere(
      (r) => age >= r[0] && age <= r[1],
      orElse: () =>
          _castingAgeRanges.isNotEmpty ? _castingAgeRanges.first : <int>[],
    );
  }

  Widget _buildCastingAgeDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Casting Age Range'),
        const SizedBox(height: 8),
        if (_castingAgeRanges.isNotEmpty)
          DropdownButtonFormField<String>(
            value: _selectedCastingRange != null
                ? "${_selectedCastingRange![0]}-${_selectedCastingRange![1]}"
                : null,
            decoration: const InputDecoration(
              labelText: 'Pilih Range Usia Casting',
              border: OutlineInputBorder(),
            ),
            items: _castingAgeRanges.map((range) {
              String value = "${range[0]}-${range[1]}";
              String displayText = _formatAgeRangeDisplay(range[0], range[1]);

              return DropdownMenuItem<String>(
                value: value,
                child: Text(displayText),
              );
            }).toList(),
            onChanged: (String? selectedValue) {
              if (selectedValue != null) {
                List<String> parts = selectedValue.split('-');
                if (parts.length == 2) {
                  int min = int.tryParse(parts[0]) ?? 0;
                  int max = int.tryParse(parts[1]) ?? 0;
                  setState(() {
                    _selectedCastingRange = [min, max];
                  });
                }
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Pilih usia casting';
              }
              return null;
            },
          )
        else
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Masukkan tanggal lahir terlebih dahulu',
              style: TextStyle(color: Colors.grey),
            ),
          ),
      ],
    );
  }

// Helper method untuk format display semua usia individual
  String _formatAgeRangeDisplay(int min, int max) {
    if (min == max) {
      return '$min tahun';
    }

    // Generate list semua usia dalam range
    List<String> ages = [];
    for (int i = min; i <= max; i++) {
      ages.add(i.toString());
    }

    // Gabungkan semua usia dengan koma
    return '${ages.join(', ')} tahun';
  }

  Widget _buildPhysicalInfoSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Physical Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _ageController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _heightController,
                    decoration: const InputDecoration(
                      labelText: 'Height (cm)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _weightController,
                    decoration: const InputDecoration(
                      labelText: 'Weight (kg)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedWarganegara,
              decoration: const InputDecoration(
                labelText: 'Warga Negara',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'Indonesia', child: Text('Indonesia')),
                DropdownMenuItem(value: 'Asing', child: Text('Asing')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedWarganegara = value;
                  // Reset work permit selection when changing nationality
                  if (value != 'Asing') {
                    _selectedWorkPermit = null;
                  }
                  // Update the controller for backward compatibility
                  _sukuController.text = value ?? '';
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select Warga Negara';
                }
                return null;
              },
            ),

            // Show work permit question only if "Asing" is selected
            if (_selectedWarganegara == 'Asing') ...[
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedWorkPermit,
                decoration: const InputDecoration(
                  labelText: 'Have a Work Permit / KITAS?',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'Yes', child: Text('Yes')),
                  DropdownMenuItem(value: 'No', child: Text('No')),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedWorkPermit = value;
                  });
                },
                validator: (value) {
                  if (_selectedWarganegara == 'Asing' &&
                      (value == null || value.isEmpty)) {
                    return 'Please select work permit status';
                  }
                  return null;
                },
              ),
            ],

            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedWarnaKulit,
              decoration: const InputDecoration(
                labelText: 'Skin Color',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'Putih', child: Text('Putih')),
                DropdownMenuItem(
                    value: 'Kuning Langsat', child: Text('Kuning Langsat')),
                DropdownMenuItem(
                    value: 'Sawo Matang', child: Text('Sawo Matang')),
                DropdownMenuItem(value: 'Coklat', child: Text('Coklat')),
                DropdownMenuItem(value: 'Hitam', child: Text('Hitam')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedWarnaKulit = value;
                  // Update the controller for backward compatibility
                  _warnaKulitController.text = value ?? '';
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select skin color';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            _buildCastingAgeDropdown(),
            const SizedBox(height: 16),
            const Text('Clothing Sizes'),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _ukuranBajuController,
                    decoration: const InputDecoration(
                      labelText: 'Shirt Size',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _ukuranCelanaController,
                    decoration: const InputDecoration(
                      labelText: 'Pants Size',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _ukuranSepatuController,
                    decoration: const InputDecoration(
                      labelText: 'Shoe Size',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialMediaSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Social Media',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _instagramUsernameController,
                    decoration: const InputDecoration(
                      labelText: 'Instagram Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _instagramFollowerController,
                    decoration: const InputDecoration(
                      labelText: 'Followers',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _tiktokUsernameController,
                    decoration: const InputDecoration(
                      labelText: 'TikTok Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _tiktokFollowerController,
                    decoration: const InputDecoration(
                      labelText: 'Followers',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _threadsUsernameController,
                    decoration: const InputDecoration(
                      labelText: 'Threads Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _threadsFollowerController,
                    decoration: const InputDecoration(
                      labelText: 'Followers',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _facebookUsernameController,
                    decoration: const InputDecoration(
                      labelText: 'Facebook Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _facebookFollowerController,
                    decoration: const InputDecoration(
                      labelText: 'Followers',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _youtubeUsernameController,
                    decoration: const InputDecoration(
                      labelText: 'YouTube Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _youtubeFollowerController,
                    decoration: const InputDecoration(
                      labelText: 'Subscribers',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDocumentsSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Documents',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Has Passport'),
            RadioListTile<int>(
              title: const Text('Ya'),
              value: 1,
              groupValue: _passportStatus,
              onChanged: (value) {
                setState(() {
                  _passportStatus = value ?? 0;
                  _isPassport = _passportStatus == 1;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Tidak'),
              value: 0,
              groupValue: _passportStatus,
              onChanged: (value) {
                setState(() {
                  _passportStatus = value ?? 0;
                  _isPassport = _passportStatus == 1;
                });
              },
            ),
            const SizedBox(height: 8),
            const Text('Has NPWP'),
            RadioListTile<int>(
              title: const Text('Ya'),
              value: 1,
              groupValue: _npwpStatus,
              onChanged: (value) {
                setState(() {
                  _npwpStatus = value ?? 0;
                  _isNpwp = _npwpStatus == 1;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Tidak'),
              value: 0,
              groupValue: _npwpStatus,
              onChanged: (value) {
                setState(() {
                  _npwpStatus = value ?? 0;
                  _isNpwp = _npwpStatus == 1;
                });
              },
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            const Text('Profile Photo'),
            const SizedBox(height: 8),
            _photoProfile == null
                ? ElevatedButton.icon(
                    onPressed: _pickProfilePhoto,
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Select Photo'),
                  )
                : Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: (_photoProfile != null &&
                                _photoProfile!.isNotEmpty)
                            ? Image.network(
                                '${AppConfig.baseURL}/$_photoProfile',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.broken_image, size: 80),
                              )
                            : const Icon(Icons.person, size: 80),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Photo Selected',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            _photoProfile = null;
                          });
                        },
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguagesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Languages',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: _addLanguage,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ..._userLanguages.asMap().entries.map((entry) {
              final index = entry.key;
              final language = entry.value;
              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: language['language'],
                        decoration: const InputDecoration(
                          labelText: 'Language',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _userLanguages[index]['language'] = value;
                        },
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: language['level'],
                        decoration: const InputDecoration(
                          labelText: 'Level',
                          border: OutlineInputBorder(),
                        ),
                        items: const [
                          DropdownMenuItem(
                              value: 'jelek', child: Text('jelek')),
                          DropdownMenuItem(
                              value: 'sedang', child: Text('sedang')),
                          DropdownMenuItem(value: 'baik', child: Text('baik')),
                          DropdownMenuItem(
                              value: 'sangat_baik', child: Text('sangat baik')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _userLanguages[index]['level'] = value ?? 'jelek';
                          });
                        },
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () => _removeLanguage(index),
                          icon: const Icon(Icons.delete),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotosSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Portfolio Photos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: _addPhoto,
                  icon: const Icon(Icons.add_photo_alternate),
                  tooltip: 'Add Photo',
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_photos.isEmpty)
              Center(
                child: Text(
                  'No portfolio photos yet.',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ..._photos.asMap().entries.map((entry) {
              final index = entry.key;
              final photo = entry.value;
              final photoPath = photo['photo_url'];
              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: photoPath != null && photoPath.isNotEmpty
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            // Pastikan tambahkan base url jika perlu, misal:
                            photoPath.startsWith('http')
                                ? photoPath
                                : '${AppConfig.baseURL}/$photoPath',
                            width: 56,
                            height: 56,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.broken_image),
                          ),
                        )
                      : IconButton(
                          icon: const Icon(Icons.add_a_photo),
                          onPressed: () => _pickPhoto(index),
                          tooltip: 'Pick Photo',
                        ),
                  title: Text(
                    photoPath != null && photoPath.isNotEmpty
                        ? 'Photo ${index + 1}'
                        : 'No photo selected',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: photoPath != null && photoPath.isNotEmpty
                      ? Text(photoPath,
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                      : null,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (photoPath != null && photoPath.isNotEmpty)
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          tooltip: 'Change Photo',
                          onPressed: () => _pickPhoto(index),
                        ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        tooltip: 'Remove Photo',
                        onPressed: () => _removePhoto(index),
                      ),
                    ],
                  ),
                  onTap: photoPath == null || photoPath.isEmpty
                      ? () => _pickPhoto(index)
                      : null,
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildVideosSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Portfolio Videos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: _addVideo,
                  icon: const Icon(Icons.add_to_photos),
                  tooltip: 'Add Video',
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_videos.isEmpty)
              Center(
                child: Text(
                  'No portfolio videos yet.',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ..._videos.asMap().entries.map((entry) {
              final index = entry.key;
              final video = entry.value;
              final videoPath = video['video_url'];
              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: videoPath != null && videoPath.isNotEmpty
                      ? const Icon(Icons.videocam, color: Colors.blue, size: 32)
                      : IconButton(
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () => _pickVideo(index),
                          tooltip: 'Pick Video',
                        ),
                  title: Text(
                    videoPath != null && videoPath.isNotEmpty
                        ? 'Video ${index + 1}'
                        : 'No video selected',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: videoPath != null && videoPath.isNotEmpty
                      ? Text(videoPath,
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                      : null,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (videoPath != null && videoPath.isNotEmpty)
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          tooltip: 'Change Video',
                          onPressed: () => _pickVideo(index),
                        ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        tooltip: 'Remove Video',
                        onPressed: () => _removeVideo(index),
                      ),
                    ],
                  ),
                  onTap: videoPath == null || videoPath.isEmpty
                      ? () => _pickVideo(index)
                      : null,
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _submitProfile,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: const Text(
          'Complete Profile',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  Future<void> _pickExperienceVideo(int index) async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      final result =
          await context.read<AuthCubit>().uploadFile(File(video.path));
      if (result != null && result['status'] == 'Success') {
        final url = result['data']['url'];
        setState(() {
          _experiences[index]['video_url'] = url;
        });
      } else {
        Fluttertoast.showToast(msg: 'Failed to upload video');
      }
    }
  }

  Future<void> _selectBirthDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 18 years ago
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _birthDate) {
      setState(() {
        _birthDate = picked;
        // Hitung umur otomatis
        final now = DateTime.now();
        int age = now.year - picked.year;
        if (now.month < picked.month ||
            (now.month == picked.month && now.day < picked.day)) {
          age--;
        }
        _ageController.text = age.toString();
        _generateCastingAgeRanges();
      });
    }
  }

  Future<void> _pickProfilePhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // Upload file ke server
      final result =
          await context.read<AuthCubit>().uploadFile(File(image.path));
      if (result != null && result['status'] == 'Success') {
        final url = result['data']['url'];
        setState(() {
          _photoProfile = url;
        });
      } else {
        Fluttertoast.showToast(msg: 'Failed to upload profile photo');
      }
    }
  }

  void _addLanguage() {
    setState(() {
      _userLanguages.add({'language': '', 'level': 'jelek'});
    });
  }

  void _removeLanguage(int index) {
    setState(() {
      _userLanguages.removeAt(index);
    });
  }

  void _addPhoto() {
    setState(() {
      _photos.add({'photo_url': ''});
    });
  }

  void _removePhoto(int index) {
    setState(() {
      _photos.removeAt(index);
    });
  }

  Future<void> _pickPhoto(int index) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // Upload file ke server
      final result =
          await context.read<AuthCubit>().uploadFile(File(image.path));
      // Ambil url dari hasil upload
      if (result != null && result['status'] == 'Success') {
        final url = result['data']['url'];
        setState(() {
          _photos[index]['photo_url'] = url;
        });
      } else {
        Fluttertoast.showToast(msg: 'Failed to upload photo');
      }
    }
  }

  void _addVideo() {
    setState(() {
      _videos.add({'video_url': ''});
    });
  }

  void _removeVideo(int index) {
    setState(() {
      _videos.removeAt(index);
    });
  }

  Future<void> _pickVideo(int index) async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      final result =
          await context.read<AuthCubit>().uploadFile(File(video.path));
      if (result != null && result['status'] == 'Success') {
        final url = result['data']['url'];
        setState(() {
          _videos[index]['video_url'] = url;
        });
      } else {
        Fluttertoast.showToast(msg: 'Failed to upload video');
      }
    }
  }

  void _submitProfile() {
    if (_formKey.currentState!.validate()) {
      if (_birthDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select birth date')),
        );
        return;
      }

      // Validate experiences - FIXED: Use category_id instead of categories
      for (int i = 0; i < _experiences.length; i++) {
        if (_experiences[i]['category_id']?.isEmpty ?? true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text('Please select category for experience ${i + 1}')),
          );
          return;
        }
        if (_experiences[i]['description']?.isEmpty ?? true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text('Please enter description for experience ${i + 1}')),
          );
          return;
        }
      }

      final photosWithBaseUrl = _photos
          .map((photo) => {
                ...photo,
                'photo_url': (photo['photo_url'] != null &&
                        photo['photo_url']!.isNotEmpty &&
                        !photo['photo_url']!.startsWith('http'))
                    ? '${AppConfig.baseURL}/${photo['photo_url']}'
                    : (photo['photo_url'] ?? ''),
              })
          .toList();

      final videosWithBaseUrl = _videos
          .map((video) => {
                ...video,
                'video_url': (video['video_url'] != null &&
                        video['video_url']!.isNotEmpty &&
                        !video['video_url']!.startsWith('http'))
                    ? '${AppConfig.baseURL}/${video['video_url']}'
                    : (video['video_url'] ?? ''),
              })
          .toList();

      // Format experiences with title from category name
      final experiencesFormatted = _experiences
          .map((experience) => {
                'title': experience['title'], // Category name as title
                'description': experience['description'],
                'video_url': (experience['video_url'] != null &&
                        experience['video_url']!.isNotEmpty &&
                        !experience['video_url']!.startsWith('http'))
                    ? '${AppConfig.baseURL}/${experience['video_url']}'
                    : (experience['video_url'] ?? ''),
              })
          .toList();

      print('Formatted experiences for API:');
      print(experiencesFormatted);

      final data = {
        'name': _nameController.text,
        'username': _usernameController.text,
        'birth_date':
            '${_birthDate!.year}-${_birthDate!.month.toString().padLeft(2, '0')}-${_birthDate!.day.toString().padLeft(2, '0')}',
        'gender': _selectedGender,
        'phone': _phoneController.text,
        'age': int.tryParse(_ageController.text) ?? 0,
        'age_casting_min': _selectedCastingRange?[0] ?? 0,
        'age_casting_max': _selectedCastingRange?[1] ?? 0,
        'height': int.tryParse(_heightController.text) ?? 0,
        'weight': int.tryParse(_weightController.text) ?? 0,
        'ukuran_baju': _ukuranBajuController.text,
        'ukuran_celana': int.tryParse(_ukuranCelanaController.text) ?? 0,
        'ukuran_sepatu': int.tryParse(_ukuranSepatuController.text) ?? 0,
        'suku': _selectedSuku ?? '',
        'warna_kulit': _selectedWarnaKulit ?? '',
        'warga_negara': _selectedWarganegara ?? '',
        'work_permit': _selectedWorkPermit ?? '',
        'instagram_username': _instagramUsernameController.text,
        'instagram_follower': _instagramFollowerController.text,
        'tiktok_username': _tiktokUsernameController.text,
        'tiktok_follower': _tiktokFollowerController.text,
        'youtube_username': _youtubeUsernameController.text,
        'youtube_follower': _youtubeFollowerController.text,
        'threads_username': _threadsUsernameController.text,
        'threads_follower': _threadsFollowerController.text,
        'facebook_username': _facebookUsernameController.text,
        'facebook_follower': _facebookFollowerController.text,
        'is_passport': _isPassport,
        'is_npwp': _isNpwp,
        'photo_profile': (_photoProfile != null &&
                _photoProfile!.isNotEmpty &&
                !_photoProfile!.startsWith('http'))
            ? '${AppConfig.baseURL}/$_photoProfile'
            : (_photoProfile ?? ''),
        'location_id': _selectedChildId ?? '',
        'user_language': _userLanguages,
        'photos': photosWithBaseUrl,
        'videos': videosWithBaseUrl,
        'interest_categories': _interestCategories,
        'experiences': experiencesFormatted, // Send with title field
      };

      print('Final data to submit:');
      print(data);

      context.read<AuthCubit>().completeProfileTalent(data);
    }
  }
}
