import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../lib.dart';

@RoutePage()
class ClientPostingJobView extends StatefulWidget implements AutoRouteWrapper {
  const ClientPostingJobView({super.key});

  @override
  State<ClientPostingJobView> createState() => _ClientPostingJobViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ClientPostingJobCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _ClientPostingJobViewState extends State<ClientPostingJobView> {
  int _currentStep = 0;
  final PageController _pageController = PageController();

  // Form controllers
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Data storage
  List<Map<String, dynamic>> _processSchedules = [];
  List<Map<String, dynamic>> _finalSchedules = [];
  List<Map<String, dynamic>> _roles = [];
  List<Map<String, dynamic>> _locations = [];
  List<dynamic> _apiLocations = [];
  List<dynamic> _parentLocations = [];
  List<dynamic> _childLocations = [];
  final List<String> _selectedCategories = [];

  // Update data storage to separate event and talent locations
  List<Map<String, dynamic>> _eventLocations = [];
  List<Map<String, dynamic>> _talentLocations = [];

  // Add closed questions data storage
  List<Map<String, dynamic>> _closedQuestions = [];

  @override
  void initState() {
    super.initState();
    context.read<ClientPostingJobCubit>().getCategories();
    _fetchLocations();
    _initializeData();
  }

  void _initializeData() {
    _titleController.text = 'Iklan Produk Minuman Energi';
    _descriptionController.text =
        'Pembuatan iklan untuk produk minuman energi terbaru, akan dilakukan di beberapa lokasi di Jakarta.';

    _processSchedules = [
      {
        'schedule_type': 'Meeting',
        'start_time': DateTime.parse('2025-07-19T10:00:00.000Z'),
        'end_time': DateTime.parse('2025-07-19T12:00:00.000Z'),
        'notes': 'Meeting persiapan dengan klien'
      },
    ];

    _finalSchedules = [
      {
        'schedule_type': 'Shooting',
        'start_time': DateTime.parse('2025-07-21T09:00:00.000Z'),
        'end_time': DateTime.parse('2025-07-21T17:00:00.000Z'),
        'notes': 'Jadwal shooting hari pertama'
      },
    ];

    _locations = [
      {
        'location_id': '',
        'parent_id': '',
        'notes': '',
      }
    ];

    _roles = [
      {
        'title': 'Pemeran Utama Pria',
        'gender': 'Male',
        'age_min': 25,
        'age_max': 35,
        'location_province_id': '',
        'location_area_id': '',
        'description':
            'Pria atletis, wajah karismatik, mampu berakting dengan ekspresi kuat.',
        'payment_amount': 5000000,
        'payment_type': 'per day',
        'count_needed': 1,
        'additional_charges': null,
        'closed_questions': null,
      },
    ];
  }

  // Role handlers
  void _onAddRole() {
    setState(() {
      _roles.add({
        'title': '',
        'gender': 'Male',
        'age_min': 18,
        'age_max': 50,
        'location_province_id': '',
        'location_area_id': '',
        'description': '',
        'payment_amount': 0,
        'payment_type': 'per day',
        'count_needed': 1,
        'additional_charges': null,
        // Remove closed_questions from here
      });
    });
  }

  // Closed questions handlers
  void _onAddClosedQuestion() {
    setState(() {
      _closedQuestions.add({
        'question': '',
        'yes_or_no_question': true,
      });
    });
  }

  void _onRemoveClosedQuestion(int index) {
    setState(() {
      _closedQuestions.removeAt(index);
    });
  }

  void _onClosedQuestionChanged(int index, String field, dynamic value) {
    setState(() {
      _closedQuestions[index][field] = value;
    });
  }

  // Update location handlers
  void _onAddEventLocation() {
    setState(() {
      _eventLocations.add({
        'location_id': '',
        'parent_id': '',
        'notes': '',
      });
    });
  }

  void _onAddTalentLocation() {
    setState(() {
      _talentLocations.add({
        'location_id': '',
        'parent_id': '',
        'notes': '',
      });
    });
  }

  void _onRemoveEventLocation(int index) {
    setState(() {
      _eventLocations.removeAt(index);
    });
  }

  void _onRemoveTalentLocation(int index) {
    setState(() {
      _talentLocations.removeAt(index);
    });
  }

  void _onEventLocationChanged(int index, String field, String value) {
    setState(() {
      _eventLocations[index][field] = value;
      if (field == 'parent_id') {
        // Auto set location_id ke parent_id ketika parent dipilih
        _eventLocations[index]['location_id'] = value;
        // Update child locations untuk dropdown
        _childLocations =
            _apiLocations.where((loc) => loc.parentId == value).toList();
      }
    });
  }

  void _onTalentLocationChanged(int index, String field, String value) {
    setState(() {
      _talentLocations[index][field] = value;
      if (field == 'parent_id') {
        // Auto set location_id ke parent_id ketika parent dipilih
        _talentLocations[index]['location_id'] = value;
        // Update child locations untuk dropdown
        _childLocations =
            _apiLocations.where((loc) => loc.parentId == value).toList();
      }
    });
  }

  Map<String, dynamic> _prepareSubmissionData() {
    // Convert DateTime objects to ISO strings for process schedules
    final processedProcessSchedules = _processSchedules.map((schedule) {
      return {
        'schedule_type': schedule['schedule_type'],
        'start_time': schedule['start_time'].toIso8601String(),
        'end_time': schedule['end_time'].toIso8601String(),
        'notes': schedule['notes']
      };
    }).toList();

    // Convert DateTime objects to ISO strings for final schedules
    final processedFinalSchedules = _finalSchedules.map((schedule) {
      return {
        'schedule_type': schedule['schedule_type'],
        'start_time': schedule['start_time'].toIso8601String(),
        'end_time': schedule['end_time'].toIso8601String(),
        'notes': schedule['notes']
      };
    }).toList();

    // Process event locations - sesuai dengan API structure
    final processedEventLocations = _eventLocations.map((location) {
      return {
        'location_id': location['location_id'],
        'notes': location['notes'],
      };
    }).toList();

    // Process talent locations - sesuai dengan API structure
    final processedTalentLocations = _talentLocations.map((location) {
      return {
        'location_id': location['location_id'],
        'notes': location['notes'],
      };
    }).toList();

    // Process categories to match API structure
    final processedCategories = _selectedCategories.map((catId) {
      return {'job_categories_id': catId};
    }).toList();

    // Process roles
    final processedRoles = _roles.map((role) {
      Map<String, dynamic> processedRole = {
        'title': role['title'],
        'gender': role['gender'],
        'age_min': role['age_min'],
        'age_max': role['age_max'],
        'description': role['description'],
        'payment_amount': role['payment_amount'],
        'payment_moderasi': 0,
        'payment_type': role['payment_type'],
        'count_needed': role['count_needed'] ?? 1,
        // 'location_id': (role['location_area_id'] != null &&
        //         role['location_area_id'].isNotEmpty)
        //     ? role['location_area_id']
        //     : role['location_province_id'] ?? '',
      };

      // Add additional_charges as array
      if (role['additional_charges'] != null &&
          role['additional_charges'] is List) {
        processedRole['additional_charges'] = role['additional_charges'];
      } else {
        processedRole['additional_charges'] = [];
      }

      return processedRole;
    }).toList();

    return {
      'title': _titleController.text,
      'description': _descriptionController.text,
      'categories': processedCategories,
      'target_locations': processedEventLocations, // Sesuai API
      'target_locations_talent': processedTalentLocations, // Sesuai API
      'schedules': processedFinalSchedules,
      'schedule_processes': processedProcessSchedules,
      'roles': processedRoles,
      'closed_questions': _closedQuestions,
    };
  }

  Future<void> _fetchLocations() async {
    final cubit = context.read<ClientPostingJobCubit>();
    await cubit.getLocation();
    final state = cubit.state;
    final locationData = state.getLocation?.data ?? [];
    setState(() {
      _apiLocations = locationData;
      _parentLocations =
          locationData.where((loc) => loc.parentId == null).toList();
    });
  }

  // Category handlers

  void _onCategoryChanged(String categoryId) {
    setState(() {
      if (_selectedCategories.contains(categoryId)) {
        _selectedCategories.remove(categoryId);
      } else {
        _selectedCategories.clear();
        _selectedCategories.add(categoryId);
      }
    });
  }

  // Location handlers
  void _onAddLocation() {
    setState(() {
      _locations.add({
        'location_id': '',
        'parent_id': '',
        'notes': '',
      });
    });
  }

  void _onRemoveLocation(int index) {
    setState(() {
      _locations.removeAt(index);
    });
  }

  void _onLocationChanged(int index, String field, String value) {
    setState(() {
      _locations[index][field] = value;
      if (field == 'parent_id') {
        _locations[index]['location_id'] = '';
        _childLocations =
            _apiLocations.where((loc) => loc.parentId == value).toList();
      }
    });
  }

  // Process schedule handlers
  void _onAddProcessSchedule() {
    setState(() {
      _processSchedules.add({
        'schedule_type': '',
        'start_time': DateTime.now(),
        'end_time': DateTime.now().add(const Duration(hours: 2)),
        'notes': '',
      });
    });
  }

  void _onRemoveProcessSchedule(int index) {
    setState(() {
      _processSchedules.removeAt(index);
    });
  }

  void _onProcessScheduleChanged(int index, String field, dynamic value) {
    setState(() {
      _processSchedules[index][field] = value;
    });
  }

  // Final schedule handlers
  void _onAddFinalSchedule() {
    setState(() {
      _finalSchedules.add({
        'schedule_type': '',
        'start_time': DateTime.now(),
        'end_time': DateTime.now().add(const Duration(hours: 2)),
        'notes': '',
      });
    });
  }

  void _onRemoveFinalSchedule(int index) {
    setState(() {
      _finalSchedules.removeAt(index);
    });
  }

  void _onFinalScheduleChanged(int index, String field, dynamic value) {
    setState(() {
      _finalSchedules[index][field] = value;
    });
  }

  void _onRemoveRole(int index) {
    setState(() {
      _roles.removeAt(index);
    });
  }

  void _onRoleChanged(int index, String field, dynamic value) {
    setState(() {
      _roles[index][field] = value;
    });
  }

  void _onSubmit() async {
    final submissionData = _prepareSubmissionData();

    try {
      await context.read<ClientPostingJobCubit>().createJob(submissionData);
      // Print to see the final format
      print('Submission Data: $submissionData');

      // Clear all data after successful submission
      _clearAllData();

      // Handle submission logic here
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data berhasil disubmit! Form telah direset.'),
          backgroundColor: Colors.green,
        ),
      );

      // Navigate back to step 1
      setState(() {
        _currentStep = 0;
      });
      _pageController.animateToPage(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

// Add this new method to clear all data
  void _clearAllData() {
    setState(() {
      // Clear text controllers
      _titleController.clear();
      _descriptionController.clear();

      // Clear all lists
      _processSchedules.clear();
      _finalSchedules.clear();
      _roles.clear();
      _locations.clear();
      _selectedCategories.clear();
      _eventLocations.clear();
      _talentLocations.clear();
      _closedQuestions.clear(); // Add this
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Post New Job'),
      ),
      body: Column(
        children: [
          // Step indicator
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildStepIndicator(),
          ),

          // Main content area
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Step1ProjectDetails(
                  titleController: _titleController,
                  descriptionController: _descriptionController,
                  selectedCategories: _selectedCategories,
                  onCategoryChanged: _onCategoryChanged,
                ),
                Step2Locations(
                  eventLocations: _eventLocations,
                  talentLocations: _talentLocations,
                  parentLocations: _parentLocations,
                  childLocations: _childLocations,
                  apiLocations: _apiLocations,
                  onAddEventLocation: _onAddEventLocation,
                  onAddTalentLocation: _onAddTalentLocation,
                  onRemoveEventLocation: _onRemoveEventLocation,
                  onRemoveTalentLocation: _onRemoveTalentLocation,
                  onEventLocationChanged: _onEventLocationChanged,
                  onTalentLocationChanged: _onTalentLocationChanged,
                ),
                Step3ProcessSchedules(
                  processSchedules: _processSchedules,
                  onAddSchedule: _onAddProcessSchedule,
                  onRemoveSchedule: _onRemoveProcessSchedule,
                  onScheduleChanged: _onProcessScheduleChanged,
                ),
                Step4FinalSchedules(
                  finalSchedules: _finalSchedules,
                  onAddSchedule: _onAddFinalSchedule,
                  onRemoveSchedule: _onRemoveFinalSchedule,
                  onScheduleChanged: _onFinalScheduleChanged,
                ),
                Step5Roles(
                  roles: _roles,
                  onAddRole: _onAddRole,
                  onRemoveRole: _onRemoveRole,
                  onRoleChanged: _onRoleChanged,
                ),
                Step6ClosedQuestions(
                  // New step
                  closedQuestions: _closedQuestions,
                  onAddClosedQuestion: _onAddClosedQuestion,
                  onRemoveClosedQuestion: _onRemoveClosedQuestion,
                  onClosedQuestionChanged: _onClosedQuestionChanged,
                ),
                Step7ReviewSubmit(
                  // Renamed from Step6ReviewSubmit
                  titleController: _titleController,
                  descriptionController: _descriptionController,
                  selectedCategories: _selectedCategories,
                  eventLocations: _eventLocations,
                  talentLocations: _talentLocations,
                  processSchedules: _processSchedules,
                  finalSchedules: _finalSchedules,
                  roles: _roles,
                  closedQuestions: _closedQuestions, // Add this
                  apiLocations: _apiLocations,
                  onSubmit: _onSubmit,
                ),
              ],
            ),
          ),

          // Bottom navigation buttons
          _buildBottomNavigation(),
        ],
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Text(
            'Langkah-langkah Posting Iklan',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: List.generate(
            7, // Updated to 7 steps
            (index) => Expanded(
              child: Container(
                height: 6,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: _currentStep >= index
                      ? Colors.orange
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Langkah ${_currentStep + 1} dari 7',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Text(
                _getStepTitle(_currentStep),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getStepTitle(int step) {
    switch (step) {
      case 0:
        return 'Detail Job';
      case 1:
        return 'Lokasi';
      case 2:
        return 'Jadwal Proses';
      case 3:
        return 'Jadwal Final';
      case 4:
        return 'Peran';
      case 5:
        return 'Pertanyaan';
      case 6:
        return 'Review & Submit';
      default:
        return '';
    }
  }

  Widget _buildBottomNavigation() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _currentStep > 0
              ? ElevatedButton(
                  onPressed: () {
                    if (_currentStep > 0) {
                      setState(() {
                        _currentStep--;
                      });
                      _pageController.animateToPage(
                        _currentStep,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.orange,
                    side: const BorderSide(color: Colors.orange),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Kembali'),
                )
              : const SizedBox(width: 100),
          ElevatedButton(
            onPressed: _currentStep < 6 // Updated to 6
                ? () {
                    if (_currentStep < 6) {
                      setState(() {
                        _currentStep++;
                      });
                      _pageController.animateToPage(
                        _currentStep,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  }
                : _onSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text(_currentStep < 6 ? 'Lanjut' : 'Submit'), // Updated to 6
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _pageController.dispose();
    super.dispose();
  }
}
