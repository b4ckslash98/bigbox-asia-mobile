import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';

@RoutePage()
class AdminModerasiBudgetView extends StatefulWidget
    implements AutoRouteWrapper {
  final Map<String, dynamic> job;
  const AdminModerasiBudgetView({super.key, required this.job});

  @override
  State<AdminModerasiBudgetView> createState() =>
      _AdminModerasiBudgetViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AdminModerasiBudgetCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _AdminModerasiBudgetViewState extends State<AdminModerasiBudgetView> {
  // Dynamic TextEditingController map
  Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    print('dem ${widget.job}');
    _initializeControllers();
  }

  void _initializeControllers() {
    // Initialize controllers for each talent from job data
    final talents = widget.job['talents'] as List<dynamic>? ?? [];
    for (int i = 0; i < talents.length; i++) {
      var talent = talents[i];
      String budgetFormatted = talent['budgetFormatted'] ?? 'Rp 0';
      // Remove "Rp" prefix and format for TextField
      String budgetValue =
          budgetFormatted.replaceAll('Rp', '').replaceAll('.', '').trim();
      String formattedBudget = _formatCurrency(budgetValue);

      _controllers['talent_$i'] = TextEditingController(text: formattedBudget);
    }
  }

  String _formatCurrency(String digits) {
    if (digits.isEmpty) return '';

    int value = int.parse(digits);
    String formatted = value.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match match) => '${match[1]}.',
        );
    return formatted;
  }

  @override
  void dispose() {
    // Dispose all controllers
    _controllers.forEach((key, controller) {
      controller.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final talents = widget.job['talents'] as List<dynamic>? ?? [];

    return Scaffold(
      body: Column(
        children: [
          // Header Section
          HeaderAdminModerasiBudget(),
          SizedBox(height: 10),

          // Expanded ListView for scrollable content
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: talents.length,
              itemBuilder: (context, index) {
                final talent = talents[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: _buildTalentCard(
                    talent: talent,
                    controller: _controllers['talent_$index']!,
                    index: index,
                  ),
                );
              },
            ),
          ),

          // Fixed Action Buttons at bottom
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      _resetAllBudgets();
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: const BorderSide(color: Color(0xFF4285F4)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        color: Color(0xFF4285F4),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _saveBudgetChanges();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF6739),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Simpan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTalentCard({
    required Map<String, dynamic> talent,
    required TextEditingController controller,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              const Color(0xFFF8FAFC),
              const Color(0xFFF1F5F9),
            ],
            stops: [0.0, 0.5, 1.0],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF4285F4).withOpacity(0.08),
              spreadRadius: 0,
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Talent Header with enhanced styling
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 241, 139, 4), // Soft white-orange
                          Color(0xFFFF8A65), // Orange lighten
                          Color(0xFFFF5722), // Deep orange
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF4285F4).withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      'Talent ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: talent['gender'] == 'Male'
                            ? [
                                const Color(0xFF2196F3).withOpacity(0.1),
                                const Color(0xFF1976D2).withOpacity(0.1),
                              ]
                            : [
                                const Color(0xFFE91E63).withOpacity(0.1),
                                const Color(0xFFC2185B).withOpacity(0.1),
                              ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: talent['gender'] == 'Male'
                            ? const Color(0xFF2196F3).withOpacity(0.2)
                            : const Color(0xFFE91E63).withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      talent['gender'] == 'Male' ? Icons.male : Icons.female,
                      color: talent['gender'] == 'Male'
                          ? const Color(0xFF1976D2)
                          : const Color(0xFFE91E63),
                      size: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Talent Info with enhanced typography
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  '${talent['gender'] == 'Male' ? 'Pria' : 'Wanita'}, ${talent['age_range']} tahun',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1E293B),
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  talent['description'] ?? '',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF64748B),
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Budget Section with enhanced styling
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Budget Awal
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFF1F5F9), Colors.green],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFE2E8F0)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF10B981)
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_wallet,
                                    color: Color(0xFF059669),
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: const Text(
                                    'Budget asli dari client',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF64748B),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Text(
                                talent['budgetFormatted'] ?? 'Rp 0',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1E293B),
                                  letterSpacing: 0.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 16),

                    // Budget Moderasi (TextField remains the same)
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFF0F9FF),
                              Color.fromARGB(255, 254, 235, 224)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              color: const Color.fromARGB(255, 244, 131, 66),
                              width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 244, 116, 66)
                                            .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.edit_outlined,
                                    color: Color(0xFF1976D2),
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: const Text(
                                    'Budget setelah moderasi',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF64748B),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF4285F4)
                                        .withOpacity(0.08),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: controller,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  CurrencyInputFormatter(prefix: 'Rp'),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1E293B),
                                  letterSpacing: 0.2,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Masukkan budget',
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF94A3B8),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  prefixText: 'Rp ',
                                  prefixStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF4285F4),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF4285F4),
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 14,
                                  ),
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _resetAllBudgets() {
    final talents = widget.job['talents'] as List<dynamic>? ?? [];
    // Reset all controllers to original budget values
    for (int i = 0; i < talents.length; i++) {
      var talent = talents[i];
      String budgetFormatted = talent['budgetFormatted'] ?? 'Rp 0';
      String budgetValue =
          budgetFormatted.replaceAll('Rp', '').replaceAll('.', '').trim();
      String formattedBudget = _formatCurrency(budgetValue);

      _controllers['talent_$i']!.text = formattedBudget;
    }
  }

  void _saveBudgetChanges() async {
    final talents = widget.job['talents'] as List<dynamic>? ?? [];
    final jobId = widget.job['id']?.toString() ?? '';

    if (jobId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Job ID tidak ditemukan'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
      return;
    }

    // Prepare data for API
    List<Map<String, dynamic>> apiData = [];

    for (int i = 0; i < talents.length; i++) {
      var talent = talents[i];
      String moderationBudgetText = _controllers['talent_$i']!.text;

      // Convert moderation budget to integer (remove ALL formatting)
      int paymentModerasiAmount = 0;
      if (moderationBudgetText.isNotEmpty) {
        String cleanText = moderationBudgetText
            .replaceAll('Rp', '') // Remove Rp prefix
            .replaceAll(' ', '') // Remove spaces
            .replaceAll('.', '') // Remove dots
            .replaceAll(',', '') // Remove commas
            .trim(); // Remove whitespace

        print('Original text: "$moderationBudgetText"');
        print('Cleaned text: "$cleanText"');

        paymentModerasiAmount = int.tryParse(cleanText) ?? 0;
        print('Parsed amount: $paymentModerasiAmount');
      }

      // Get original budget amount
      String originalBudget = talent['budgetFormatted'] ?? 'Rp 0';
      String cleanOriginalBudget =
          originalBudget.replaceAll('Rp', '').replaceAll('.', '').trim();
      int paymentAmount = int.tryParse(cleanOriginalBudget) ?? 0;
      String roleId = talent['id']?.toString() ?? '';

      apiData.add({
        'job_role_id': roleId,
        'payment_amount': paymentAmount,
        'payment_moderasi': paymentModerasiAmount,
      });

      print(
          'API Data ${apiData.length}: $roleId, $paymentAmount, $paymentModerasiAmount');
    }

    try {
      // Call the cubit method
      await context
          .read<AdminModerasiBudgetCubit>()
          .adminModerasiBudget(jobId, apiData);

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Budget berhasil disimpan'),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );

      // Print saved budgets for debugging
      for (int i = 0; i < apiData.length; i++) {
        print('Final API Data ${i + 1}: ${apiData[i]}');
      }
    } catch (e) {
      print('gagal${e}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Gagal menyimpan budget: $e'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
    }
  }
}
