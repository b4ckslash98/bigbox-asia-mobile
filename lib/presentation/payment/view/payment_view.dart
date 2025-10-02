import 'package:auto_route/auto_route.dart';
import 'package:bigbox_asia/lib.dart';
import 'package:bigbox_asia/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';

@RoutePage()
class PaymentView extends StatefulWidget implements AutoRouteWrapper {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _PaymentViewState extends State<PaymentView>
    with TickerProviderStateMixin {
  // Payment state
  String? selectedPaymentMethodId;
  bool isProcessingPayment = false;
  bool showVirtualAccount = false;

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));

    _animationController.forward();

    // Load data when screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PaymentCubit>().getFeeRegisterTalent();
      context.read<PaymentCubit>().getListPaymentMethod();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _refreshData() async {
    try {
      // Fetch profile to check payment status
      await context.read<PaymentCubit>().getProfile();

      // Wait a bit for state to update
      await Future.delayed(const Duration(milliseconds: 100));

      final currentState = context.read<PaymentCubit>().state;
      final paymentStatus = currentState.profile?.data?.paymentStatus;

      if (paymentStatus == true) {
        // Payment is completed, navigate to complete profile
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.white),
                SizedBox(width: 12),
                Text(
                  'Pembayaran berhasil! Silakan lengkapi profil Anda.',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            backgroundColor: const Color(0xFF10B981),
            behavior: SnackBarBehavior.floating,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.all(16),
          ),
        );

        // Navigate to complete profile
        await Future.delayed(const Duration(milliseconds: 1500));
        if (mounted) {
          context.router.pushAndPopUntil(
            const CompleteProfileRoute(),
            predicate: (route) => false,
          );
        }
      } else {
        // Show status message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Row(
              children: [
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(width: 12),
                Text(
                  'Pembayaran belum terverifikasi',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            backgroundColor: const Color(0xFF3B82F6),
            behavior: SnackBarBehavior.floating,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.all(16),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.error_outline, color: Colors.white),
              SizedBox(width: 12),
              Text(
                'Gagal memperbarui status pembayaran',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.all(16),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text(
          showVirtualAccount ? 'Virtual Account' : 'Pembayaran',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF1E293B),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.black.withOpacity(0.1),
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: Color(0xFF64748B),
            ),
          ),
          onPressed: () => context.router.maybePop(),
        ),
        actions: showVirtualAccount
            ? [
                IconButton(
                  icon: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.refresh,
                      size: 20,
                      color: Color(0xFF64748B),
                    ),
                  ),
                  onPressed: _refreshData,
                  tooltip: 'Periksa Status Pembayaran',
                ),
                const SizedBox(width: 8),
              ]
            : null,
      ),
      body: BlocListener<PaymentCubit, PaymentState>(
        listenWhen: (previous, current) =>
            previous.chargeVirtualAccountPaymentSucces !=
            current.chargeVirtualAccountPaymentSucces,
        listener: (context, state) {
          if (state.chargeVirtualAccountPaymentSucces?.data != null) {
            setState(() {
              showVirtualAccount = true;
              isProcessingPayment = false;
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      'Virtual Account berhasil dibuat!',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                backgroundColor: const Color(0xFF10B981),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.all(16),
              ),
            );
          }
        },
        child: BlocBuilder<PaymentCubit, PaymentState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: _refreshData,
              color: const Color(0xFF667EEA),
              backgroundColor: Colors.white,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Show different content based on state
                        if (!showVirtualAccount) ...[
                          // Order Summary Card
                          _buildOrderSummaryCard(state),
                          const SizedBox(height: 24),
                          // Payment Method Selection
                          _buildPaymentMethodSelectionCard(state),
                          const SizedBox(height: 32),
                          _buildCreateVAButton(state),
                        ] else ...[
                          // Virtual Account Display
                          _buildVirtualAccountDisplay(state),
                          const SizedBox(height: 24),
                          _buildPaymentInstructionsCard(state),
                          const SizedBox(height: 24),
                          _buildRefreshStatusCard(),
                          const SizedBox(height: 32),
                          _buildActionButtons(),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRefreshStatusCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF10B981).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.payment,
                    color: Color(0xFF10B981),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Status Pembayaran',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Setelah melakukan pembayaran, tarik ke bawah untuk memperbarui status atau klik tombol refresh di atas.',
              style: TextStyle(
                height: 1.6,
                color: Color(0xFF475569),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF10B981), Color(0xFF059669)],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: _refreshData,
                  borderRadius: BorderRadius.circular(12),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Periksa Status Pembayaran',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderSummaryCard(PaymentState state) {
    final feeData = state.feeRegisterTalent?.data;
    final amount = feeData?.masterPaymentCodes?.amount ?? '0';
    final paymentCode = feeData?.masterPaymentCodes?.paymentCode ?? '';

    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF667EEA).withOpacity(0.3),
            offset: const Offset(0, 10),
            blurRadius: 20,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.receipt_long,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Biaya Pendaftaran Talent',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildSummaryRow('Email', feeData?.email ?? '', false),
            const SizedBox(height: 12),
            _buildSummaryRow('Role', feeData?.role ?? '', false),
            const SizedBox(height: 12),
            _buildSummaryRow('Kode Pembayaran', paymentCode, false),
            const SizedBox(height: 12),
            _buildSummaryRow(
                'Total Pembayaran', 'Rp ${_formatAmount(amount)}', true),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value, bool isHighlight,
      {bool isWarning = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 14,
          ),
        ),
        Container(
          padding: isHighlight
              ? const EdgeInsets.symmetric(horizontal: 12, vertical: 6)
              : null,
          decoration: isHighlight
              ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                )
              : null,
          child: Text(
            value,
            style: TextStyle(
              color: isHighlight
                  ? const Color(0xFF667EEA)
                  : isWarning
                      ? const Color(0xFFFFC107)
                      : Colors.white,
              fontWeight: isHighlight ? FontWeight.bold : FontWeight.w600,
              fontSize: isHighlight ? 16 : 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodSelectionCard(PaymentState state) {
    final paymentMethods = state.listPaymentMethod?.data ?? [];

    if (paymentMethods.isEmpty) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 4),
              blurRadius: 20,
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF667EEA).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.account_balance,
                    color: Color(0xFF667EEA),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Pilih Metode Pembayaran',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E293B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            ...paymentMethods.asMap().entries.map((entry) {
              final index = entry.key;
              final method = entry.value;
              if (method.isActive == true) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: index < paymentMethods.length - 1 ? 12 : 0),
                  child: _buildPaymentMethodOption(method),
                );
              }
              return const SizedBox.shrink();
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodOption(DatumGetListPaymentMethod method) {
    final isSelected = selectedPaymentMethodId == method.id;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedPaymentMethodId = method.id;
          });
          HapticFeedback.lightImpact();
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(
                    colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : null,
            color: isSelected ? null : const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isSelected ? Colors.transparent : const Color(0xFFE2E8F0),
              width: 1.5,
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: const Color(0xFF667EEA).withOpacity(0.3),
                      offset: const Offset(0, 4),
                      blurRadius: 12,
                    ),
                  ]
                : null,
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color:
                      isSelected ? Colors.white.withOpacity(0.2) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(
                    Icons.account_balance,
                    color: isSelected ? Colors.white : const Color(0xFF667EEA),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      method.name ?? 'Unknown Bank',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color:
                            isSelected ? Colors.white : const Color(0xFF1E293B),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Biaya Admin: Gratis',
                      style: TextStyle(
                        fontSize: 12,
                        color: isSelected
                            ? Colors.white.withOpacity(0.8)
                            : const Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  isSelected
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  color: isSelected ? Colors.white : const Color(0xFFCBD5E1),
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateVAButton(PaymentState state) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: selectedPaymentMethodId != null
            ? const LinearGradient(
                colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
              )
            : null,
        color: selectedPaymentMethodId == null ? const Color(0xFFE2E8F0) : null,
        borderRadius: BorderRadius.circular(16),
        boxShadow: selectedPaymentMethodId != null
            ? [
                BoxShadow(
                  color: const Color(0xFF667EEA).withOpacity(0.3),
                  offset: const Offset(0, 4),
                  blurRadius: 12,
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: selectedPaymentMethodId != null && !isProcessingPayment
              ? () => _createVirtualAccount()
              : null,
          borderRadius: BorderRadius.circular(16),
          child: Center(
            child: isProcessingPayment
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Memproses Pembayaran...',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                : Text(
                    'Bayar Sekarang',
                    style: TextStyle(
                      color: selectedPaymentMethodId != null
                          ? Colors.white
                          : const Color(0xFF94A3B8),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildVirtualAccountDisplay(PaymentState state) {
    final chargeData = state.chargeVirtualAccountPaymentSucces?.data;
    final vaNumber = chargeData?.actions
            ?.firstWhere(
              (action) => action.type == 'PRESENT_TO_CUSTOMER',
              orElse: () => const ActionGetChargeVirtualAccountPaymentSucces(),
            )
            ?.value ??
        '';

    final selectedMethod = state.listPaymentMethod?.data?.firstWhere(
      (method) => method.id == selectedPaymentMethodId,
      orElse: () => const DatumGetListPaymentMethod(),
    );

    final amount = chargeData?.requestAmount?.toString() ?? '0';
    final displayName = chargeData?.channelProperties?.displayName ?? '';
    final expiresAt = chargeData?.channelProperties?.expiresAt;
    final bigboxPayref = chargeData?.referenceId ?? '';
    return Column(
      children: [
        // Bank Info Card
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF667EEA).withOpacity(0.3),
                offset: const Offset(0, 10),
                blurRadius: 20,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedMethod?.name ?? 'Virtual Account',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Nomor Virtual Account',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _buildSummaryRow('Nama Penerima', displayName, false),
                const SizedBox(height: 12),
                _buildSummaryRow(
                    'Total Pembayaran', 'Rp ${_formatAmount(amount)}', true),
                if (expiresAt != null) ...[
                  const SizedBox(height: 12),
                  _buildSummaryRow(
                      'Batas Waktu', _formatDateTime(expiresAt), false,
                      isWarning: true),
                ],
              ],
            ),
          ),
        ),

        const SizedBox(height: 24),

        // Virtual Account Number Card
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 4),
                blurRadius: 20,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF3C7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.credit_card,
                        color: Color(0xFFD97706),
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Nomor Virtual Account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF3C7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'Menunggu Pembayaran',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFD97706),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // VA Number with Copy Button
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE2E8F0)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nomor Virtual Account',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              vaNumber.isNotEmpty ? vaNumber : 'Loading...',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () =>
                                _copyToClipboard(vaNumber, 'Virtual Account'),
                            borderRadius: BorderRadius.circular(12),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE2E8F0)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nomor BigBox Payment (DEMO Payment)',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              bigboxPayref.isNotEmpty
                                  ? bigboxPayref
                                  : 'Loading...',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _copyToClipboard(
                                bigboxPayref, '(DEMO Payment)'),
                            borderRadius: BorderRadius.circular(12),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Amount with Copy Button
                const SizedBox(height: 16),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE2E8F0)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Total Pembayaran',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Rp ${_formatAmount(amount)}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDC2626),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _copyToClipboard(amount, 'Nominal'),
                            borderRadius: BorderRadius.circular(12),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
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
    );
  }

  Widget _buildPaymentInstructionsCard(PaymentState state) {
    final selectedMethod = state.listPaymentMethod?.data?.firstWhere(
      (method) => method.id == selectedPaymentMethodId,
      orElse: () => const DatumGetListPaymentMethod(),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3B82F6).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.info_outline,
                    color: Color(0xFF3B82F6),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Cara Pembayaran',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E293B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Cara pembayaran via ${selectedMethod?.name ?? 'Virtual Account'}:',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF374151),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            _buildInstructionStep('1', 'Buka aplikasi mobile banking atau ATM'),
            _buildInstructionStep('2', 'Pilih menu Transfer/Bayar'),
            _buildInstructionStep('3', 'Pilih Virtual Account'),
            _buildInstructionStep('4', 'Masukkan nomor Virtual Account'),
            _buildInstructionStep(
                '5', 'Masukkan nominal pembayaran yang tepat'),
            _buildInstructionStep('6', 'Konfirmasi pembayaran'),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFFEF3C7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.warning_amber,
                    color: Color(0xFFD97706),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Pastikan nominal yang dibayar sesuai dengan yang tertera',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color(0xFFD97706).withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionStep(String step, String instruction) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                step,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              instruction,
              style: const TextStyle(
                color: Color(0xFF475569),
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _createVirtualAccount() async {
    setState(() {
      isProcessingPayment = true;
    });

    try {
      // Call API to set payment charge
      await context
          .read<PaymentCubit>()
          .postSetPaymentCharge(selectedPaymentMethodId!);
    } catch (e) {
      setState(() {
        isProcessingPayment = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.error_outline, color: Colors.white),
              SizedBox(width: 12),
              Text(
                'Terjadi kesalahan, silakan coba lagi',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.all(16),
        ),
      );
    }
  }

  Widget _buildActionButtons() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF667EEA).withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 12,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _refreshData,
              borderRadius: BorderRadius.circular(16),
              child: const Center(
                child: Text(
                  'Saya Sudah Bayar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFE2E8F0)),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                setState(() {
                  showVirtualAccount = false;
                  selectedPaymentMethodId = null;
                });
              },
              borderRadius: BorderRadius.circular(16),
              child: const Center(
                child: Text(
                  'Pilih Metode Lain',
                  style: TextStyle(
                    color: Color(0xFF64748B),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _copyToClipboard(String text, String label) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.copy, color: Colors.white, size: 20),
            const SizedBox(width: 12),
            Text(
              '$label berhasil disalin',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF10B981),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 2),
      ),
    );
    HapticFeedback.lightImpact();
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.inDays > 0) {
      return '${difference.inDays} hari lagi';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} jam lagi';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} menit lagi';
    } else {
      return 'Segera berakhir';
    }
  }

  String _formatAmount(String amount) {
    if (amount.isEmpty) return '0';

    try {
      final number = double.parse(amount);
      return number.toStringAsFixed(0).replaceAllMapped(
            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
            (Match m) => '${m[1]}.',
          );
    } catch (e) {
      return amount;
    }
  }
}
