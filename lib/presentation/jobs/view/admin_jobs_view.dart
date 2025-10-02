import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';

class AdminJobsView extends StatefulWidget {
  const AdminJobsView({Key? key}) : super(key: key);

  @override
  State<AdminJobsView> createState() => _AdminJobsViewState();
}

class _AdminJobsViewState extends State<AdminJobsView> {
  String selectedStatus = 'Semua';
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Load jobs data saat init
    context.read<JobsCubit>().getMyJobs();
  }

  void _setStatus(String status) {
    setState(() {
      selectedStatus = status;
    });
  }

  // Helper method untuk mapping status dari API ke display text
  String _mapJobStatus(String? apiStatus) {
    switch (apiStatus?.toLowerCase()) {
      case 'publish':
        return 'Published';
      case 'in_review':
        return 'In Review';
      case 'reject':
        return 'Rejected';
      case 'cancel':
        return 'Cancelled';
      default:
        return 'In Review';
    }
  }

  // Helper method untuk convert GetClientMyJobModelDatum ke format yang dibutuhkan JobsCardAdmin
  Map<String, dynamic> _convertJobData(GetClientMyJobModelDatum job) {
    final totalBudget = _calculateTotalBudget(job.roles);

    return {
      'id': job.id ?? '',
      'title': job.title ?? 'Untitled Job',
      'status': _mapJobStatus(job.status),
      'client': job.client?.email ??
          'Unknown Client', // ← Perbaikan: menggunakan client?.email
      'jenisJob': _getFirstCategory(job.categories), // ← Kategori pertama
      'asalTalent': _getTalentLocationNames(
          job.locationsTalent), // ← Dari locations_talent
      'deadline':
          job.createdAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
      'budget': totalBudget, // Raw integer value untuk sorting/filtering
      'budgetFormatted':
          _formatCurrency(totalBudget), // Formatted string untuk display
      'totalTalent': job.roles?.length ?? 0, // ← Langsung dari jumlah role
      'moderasi': 'Budget',
      'followers': 0,
      'talent': 0,
      'applied': job.totalApplications ??
          0, // ← Perbaikan: menggunakan totalApplications
      'createdAt':
          job.createdAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
      'isReview': job.status?.toLowerCase() == 'in_review',
      'talents': _convertTalentData(job.roles),
      'views': job.views ?? 0, // ← Perbaikan: menggunakan views dari model
      'conversion_rate': job.conversionRate ??
          0, // ← Perbaikan: menggunakan conversionRate dari model
    };
  }

  // Helper method untuk mendapatkan kategori pertama
  String _getFirstCategory(List<GetClientMyJobModelCategory>? categories) {
    if (categories == null || categories.isEmpty) return 'General';
    return categories.first.name ?? 'General';
  }

  // Helper method untuk mendapatkan nama lokasi talent dari locations_talent
  String _getTalentLocationNames(
      List<GetClientMyJobModelLocationElement>? locationsTalent) {
    if (locationsTalent == null || locationsTalent.isEmpty)
      return 'No Location';
    return locationsTalent
        .map((loc) => loc.location?.name ?? 'Unknown Location')
        .take(3)
        .join(', ');
  }

  String _getLocationNames(
      List<GetClientMyJobModelLocationElement>? locations) {
    if (locations == null || locations.isEmpty) return 'No Location';
    return locations
        .map((loc) =>
            loc.location?.name ??
            'Unknown Location') // ← Perbaikan: menggunakan location?.name
        .take(3)
        .join(', ');
  }

  int _calculateTotalBudget(List<GetClientMyJobModelRole>? roles) {
    if (roles == null || roles.isEmpty) return 0;

    return roles.fold(0, (total, role) {
      // Parse payment_amount yang dalam format decimal string
      final paymentStr = role.paymentAmount?.toString() ?? '0';
      final payment = double.tryParse(paymentStr)?.toInt() ?? 0;
      final countNeeded =
          role.countNeeded ?? 1; // ← Perbaikan: kalikan dengan countNeeded

      print("payment: $payment, countNeeded: $countNeeded");

      return total +
          (payment *
              countNeeded); // ← Perbaikan: kalikan dengan jumlah yang dibutuhkan
    });
  }

  String _formatCurrency(int amount) {
    return 'Rp${amount.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
  }

  List<Map<String, dynamic>> _convertTalentData(
      List<GetClientMyJobModelRole>? roles) {
    if (roles == null || roles.isEmpty) return [];

    List<Map<String, dynamic>> talents = [];
    for (int i = 0; i < roles.length; i++) {
      final role = roles[i];
      // Parse payment_amount yang dalam format decimal string
      final paymentStr = role.paymentAmount?.toString() ?? '0';
      final payment = double.tryParse(paymentStr)?.toInt() ?? 0;
      final countNeeded = role.countNeeded ?? 1;

      // ← Perbaikan: buat talent sesuai dengan countNeeded
      for (int j = 0; j < countNeeded; j++) {
        talents.add({
          'id': '${role.id}_$j',
          'nama':
              '${role.title ?? "Unknown Role"} ${countNeeded > 1 ? "${j + 1}" : ""}',
          'budget': payment,
          'budgetFormatted': _formatCurrency(payment),
          'gender': role.gender ?? 'Unknown',
          'age_range': '${role.ageMin ?? 0}-${role.ageMax ?? 0}',
          'description': role.description ?? '',
        });
      }
    }
    return talents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header: Search + Filter
          JobsHeaderAdmin(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Search Bar
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Cari job...',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        searchController.clear();
                        setState(() {});
                      },
                    ),
                  ),
                  onChanged: (_) => setState(() {}),
                ),
                const SizedBox(height: 16),
                // Filter Chips
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      'Semua',
                      'Published',
                      'In Review',
                      'Rejected',
                      'Cancelled',
                    ].map((status) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ChoiceChip(
                          label: Text(status),
                          selected: selectedStatus == status,
                          selectedColor: Color(0xffFF6739),
                          backgroundColor: Colors.grey[300],
                          labelStyle: TextStyle(
                            color: selectedStatus == status
                                ? Colors.white
                                : Colors.black,
                          ),
                          onSelected: (isSelected) {
                            if (isSelected) {
                              _setStatus(status);
                            }
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          // Jobs List
          Expanded(
            child: BlocBuilder<JobsCubit, JobsState>(
              builder: (context, state) {
                // Loading state
                if (state.myJobs == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                // Empty state
                if (state.myJobs?.data?.isEmpty == true) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.work_off,
                          size: 64,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Tidak ada job ditemukan',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                // Debug: Print raw data
                print('Jobs data count: ${state.myJobs?.data?.length}');

                // Gunakan model GetClientMyJobModelDatum langsung
                final jobs = state.myJobs!.data!;
                final convertedJobs =
                    jobs.map((job) => _convertJobData(job)).toList();

                print('Converted jobs count: ${convertedJobs.length}');

                // Apply filters
                final filteredList = convertedJobs.where((job) {
                  final matchStatus = selectedStatus == 'Semua' ||
                      job['status'] == selectedStatus;
                  final matchSearch = searchController.text.isEmpty ||
                      job['title']
                          .toLowerCase()
                          .contains(searchController.text.toLowerCase());
                  return matchStatus && matchSearch;
                }).toList();

                if (filteredList.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Tidak ada job yang sesuai filter',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<JobsCubit>().getMyJobs();
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final job = filteredList[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: JobsCardAdmin(
                          idJobs: job['id'],
                          job: job,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
