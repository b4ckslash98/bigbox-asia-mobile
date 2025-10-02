import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../lib.dart';

@RoutePage()
class TalentDetailJobCardView extends StatefulWidget
    implements AutoRouteWrapper {
  String jobId;
  TalentDetailJobCardView({super.key, required this.jobId});

  @override
  _TalentDetailJobCardViewState createState() =>
      _TalentDetailJobCardViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TalentDetailJobCardCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _TalentDetailJobCardViewState extends State<TalentDetailJobCardView> {
  @override
  void initState() {
    super.initState();
    context.read<TalentDetailJobCardCubit>().getJobDetail(widget.jobId);
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormat =
        NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);
    final primaryColor = const Color(0xffFF6739);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: BlocBuilder<TalentDetailJobCardCubit, TalentDetailJobCardState>(
        builder: (context, state) {
          if (state.jobDetail == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final jobData = state.jobDetail!.data;
          if (jobData == null) {
            return const Center(child: Text('Job tidak ditemukan'));
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 90),
            child: Column(
              children: [
                _buildHeader(primaryColor, currencyFormat, jobData),
                _buildJobInfoSection(primaryColor, currencyFormat, jobData),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              color: Colors.grey.shade700,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade50,
                  border: Border.all(color: Colors.green),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      'Sudah Dilamar',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
              color: Colors.grey.shade700,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(Color primaryColor, NumberFormat currencyFormat,
      GetDetailJobsResponseData job) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildBadge('✅ ${_getStatusText(job.status)}',
                  Colors.green.shade100, Colors.green),
              const SizedBox(width: 8),
              if (job.categories?.isNotEmpty == true)
                _buildBadge('📢 ${job.categories!.first.name}',
                    Colors.blue.shade100, Colors.blue.shade700),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            job.title ?? 'Job Title',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.business, color: Colors.white70, size: 16),
              const SizedBox(width: 6),
              Text(
                job.client?.email ?? 'Unknown Client',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.white70, size: 16),
              const SizedBox(width: 6),
              Text(
                _buildLocationString(job.locations),
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('Views: ', style: TextStyle(color: Colors.white70)),
              Text(
                "${job.views ?? 0}",
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _infoCard(
                  '💰 Budget',
                  _buildSalaryRange(job.roles),
                  primaryColor,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _infoCard(
                  '📅 Deadline',
                  _buildDeadline(job.schedules),
                  primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _infoCard(
                  '📊 Aplikasi',
                  "${job.totalApplications ?? 0}",
                  primaryColor,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _infoCard(
                  '📈 Konversi',
                  "${job.conversionRate ?? 0}%",
                  primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _statisticItem(
                  Icons.people,
                  '${job.totalApplications ?? 0}',
                  'Applicants',
                ),
                Container(height: 30, width: 1, color: Colors.white30),
                _statisticItem(
                  Icons.visibility,
                  '${job.views ?? 0}',
                  'Views',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJobInfoSection(Color primaryColor, NumberFormat currencyFormat,
      GetDetailJobsResponseData job) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionHeader('📄 Informasi Job', primaryColor),
              const SizedBox(height: 16),
              _enhancedInfoRow('Nama Job', job.title ?? 'N/A', Icons.work),
              _enhancedInfoRow('Kategori', _buildCategoryString(job.categories),
                  Icons.category),
              _enhancedInfoRow('Lokasi', _buildLocationString(job.locations),
                  Icons.location_on),
              _enhancedInfoRow(
                  'Status', _getStatusText(job.status), Icons.info),
              _enhancedInfoRow(
                  'Gaji', _buildSalaryRange(job.roles), Icons.monetization_on),
              _enhancedInfoRow('Deskripsi',
                  job.description ?? 'Tidak ada deskripsi', Icons.description),
              _enhancedInfoRow(
                  'Dibuat', _formatDate(job.createdAt), Icons.calendar_today),
              _enhancedInfoRow(
                  'Diupdate', _formatDate(job.updatedAt), Icons.update),
              const SizedBox(height: 20),
              if (job.roles?.isNotEmpty == true) ...[
                _sectionHeader('👥 Role yang Dibutuhkan', primaryColor),
                const SizedBox(height: 16),
                ...job.roles!.map((role) => _buildRoleCard(role)).toList(),
              ],
              if (job.schedules?.isNotEmpty == true) ...[
                const SizedBox(height: 20),
                _sectionHeader('📅 Jadwal Event', primaryColor),
                const SizedBox(height: 16),
                ...job.schedules!
                    .map((schedule) => _buildScheduleCard(schedule))
                    .toList(),
              ],
              if (job.scheduleProcesses?.isNotEmpty == true) ...[
                const SizedBox(height: 20),
                _sectionHeader('⚙️ Jadwal Proses', primaryColor),
                const SizedBox(height: 16),
                ...job.scheduleProcesses!
                    .map((schedule) => _buildProcessScheduleCard(schedule))
                    .toList(),
              ],
              if (job.closedQuestions?.isNotEmpty == true) ...[
                const SizedBox(height: 20),
                _sectionHeader('❓ Pertanyaan Tambahan', primaryColor),
                const SizedBox(height: 16),
                ...job.closedQuestions!
                    .map((question) => _buildQuestionCard(question))
                    .toList(),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCard(String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(color: Colors.white70, fontSize: 13)),
          const SizedBox(height: 6),
          Text(value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title, Color color) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: color.withOpacity(0.3), width: 2),
        ),
      ),
      child: Text(
        title,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: color),
      ),
    );
  }

  Widget _enhancedInfoRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.orange.shade400),
          const SizedBox(width: 12),
          SizedBox(
            width: 90,
            child: Text(label,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87)),
          ),
          const Text(': ', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.black87)),
          ),
        ],
      ),
    );
  }

  Widget _statisticItem(IconData icon, String count, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 4),
        Text(count,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        Text(label,
            style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }

  Widget _buildBadge(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }

  Widget _buildRoleCard(GetDetailJobsResponseRole role) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            role.title ?? 'N/A',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          if (role.description != null && role.description!.isNotEmpty)
            Text(
              role.description!,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Gender: ${role.gender ?? 'Any'}',
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(width: 16),
              if (role.ageMin != null && role.ageMax != null)
                Text(
                  'Usia: ${role.ageMin}-${role.ageMax} tahun',
                  style: const TextStyle(fontSize: 13),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              // Text(
              //   'Dibutuhkan: ${role.countNeeded ?? 0} orang',
              //   style: const TextStyle(fontSize: 13),
              // ),
              // const Spacer(),
              Text(
                // Gunakan logic yang sama untuk menampilkan payment
                () {
                  final paymentModerasi =
                      double.tryParse(role.paymentModerasi ?? '0') ?? 0;
                  if (paymentModerasi > 0) {
                    return _formatCurrency(role.paymentModerasi);
                  } else {
                    return _formatCurrency(role.paymentAmount);
                  }
                }(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade700,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleCard(GetDetailJobsResponseSchedule schedule) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            schedule.scheduleType ?? 'Event',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.blue.shade600),
              const SizedBox(width: 8),
              Text(
                _formatDate(schedule.startTime),
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.access_time, size: 16, color: Colors.blue.shade600),
              const SizedBox(width: 8),
              Text(
                '${_formatTime(schedule.startTime)} - ${_formatTime(schedule.endTime)}',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),
          if (schedule.notes != null && schedule.notes!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              schedule.notes!,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontStyle: FontStyle.italic,
                fontSize: 13,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildProcessScheduleCard(GetDetailJobsResponseSchedule schedule) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.purple.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            schedule.scheduleType ?? 'Proses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple.shade700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today,
                  size: 16, color: Colors.purple.shade600),
              const SizedBox(width: 8),
              Text(
                _formatDate(schedule.startTime),
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.access_time, size: 16, color: Colors.purple.shade600),
              const SizedBox(width: 8),
              Text(
                '${_formatTime(schedule.startTime)} - ${_formatTime(schedule.endTime)}',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),
          if (schedule.notes != null && schedule.notes!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              schedule.notes!,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontStyle: FontStyle.italic,
                fontSize: 13,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuestionCard(GetDetailJobsResponseClosedQuestion question) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.question ?? 'N/A',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: question.yesOrNoQuestion == true
                  ? Colors.green.shade100
                  : Colors.blue.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              question.yesOrNoQuestion == true ? 'Ya/Tidak' : 'Pilihan Ganda',
              style: TextStyle(
                color: question.yesOrNoQuestion == true
                    ? Colors.green.shade700
                    : Colors.blue.shade700,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper methods
  String _buildLocationString(
      List<GetDetailJobsResponseLocationElement>? locations) {
    if (locations == null || locations.isEmpty) return 'Lokasi tidak tersedia';
    return locations
        .map((loc) => loc.location?.name ?? loc.notes ?? '')
        .where((name) => name.isNotEmpty)
        .join(', ');
  }

  String _buildCategoryString(List<GetDetailJobsResponseCategory>? categories) {
    if (categories == null || categories.isEmpty) return 'Tidak ada kategori';
    return categories
        .map((cat) => cat.name ?? '')
        .where((name) => name.isNotEmpty)
        .join(', ');
  }

  String _buildSalaryRange(List<GetDetailJobsResponseRole>? roles) {
    if (roles == null || roles.isEmpty) return 'Tidak disebutkan';
    final role = roles.first;

    // Cek paymentModerasi terlebih dahulu
    final paymentModerasi = double.tryParse(role.paymentModerasi ?? '0') ?? 0;

    if (paymentModerasi > 0) {
      return _formatCurrency(role.paymentModerasi);
    } else {
      return _formatCurrency(role.paymentAmount);
    }
  }

  String _buildDeadline(List<GetDetailJobsResponseSchedule>? schedules) {
    if (schedules == null || schedules.isEmpty) return 'Tidak ada deadline';

    DateTime? earliestStart;
    for (var schedule in schedules) {
      if (schedule.startTime != null) {
        if (earliestStart == null ||
            schedule.startTime!.isBefore(earliestStart)) {
          earliestStart = schedule.startTime;
        }
      }
    }

    if (earliestStart == null) return 'Tidak ada deadline';

    final now = DateTime.now();
    final difference = earliestStart.difference(now).inDays;

    return '${_formatDate(earliestStart)} (${difference > 0 ? '$difference hari lagi' : 'Expired'})';
  }

  String _formatCurrency(String? amount) {
    if (amount == null || amount.isEmpty) return 'IDR 0';
    final numericAmount = double.tryParse(amount)?.toInt() ?? 0;
    return 'IDR ${numericAmount.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        )}';
  }

  String _getStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'publish':
        return 'Dipublikasi';
      case 'in_review':
        return 'Dalam Review';
      case 'reject':
        return 'Ditolak';
      case 'cancel':
        return 'Dibatalkan';
      default:
        return status ?? 'Unknown';
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'Tidak tersedia';
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(DateTime? date) {
    if (date == null) return 'N/A';
    return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }
}
