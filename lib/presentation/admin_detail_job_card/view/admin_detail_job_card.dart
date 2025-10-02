import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';

@RoutePage()
class AdminDetailJobCardView extends StatefulWidget
    implements AutoRouteWrapper {
  final String jobId;

  const AdminDetailJobCardView({
    super.key,
    required this.jobId,
  });

  @override
  _AdminDetailJobCardViewState createState() => _AdminDetailJobCardViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AdminDetailJobCardCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _AdminDetailJobCardViewState extends State<AdminDetailJobCardView> {
  @override
  void initState() {
    super.initState();
    context.read<AdminDetailJobCardCubit>().getJobDetail(widget.jobId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail Job'),
        backgroundColor: Color(0xffFF6739),
        elevation: 0,
      ),
      body: BlocBuilder<AdminDetailJobCardCubit, AdminDetailJobCardState>(
        builder: (context, state) {
          if (state.jobDetail == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final jobData = state.jobDetail!.data;
          if (jobData == null) {
            return const Center(
              child: Text('Data pekerjaan tidak ditemukan'),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<AdminDetailJobCardCubit>()
                  .getJobDetail(widget.jobId);
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Job Overview Card
                  _buildJobOverviewCard(jobData),
                  const SizedBox(height: 16),

                  // Project Description Section
                  _buildProjectDescriptionCard(jobData),
                  const SizedBox(height: 16),

                  // Categories Section
                  _buildCategoriesCard(jobData.categories),
                  const SizedBox(height: 16),

                  // Locations Section
                  _buildLocationsCard(
                      jobData.locations, jobData.locationsTalent),
                  const SizedBox(height: 16),

                  // Talents Section
                  _buildTalentsCard(jobData.roles),
                  const SizedBox(height: 16),

                  // Questions Section
                  _buildQuestionsCard(jobData.closedQuestions),
                  const SizedBox(height: 16),

                  // Shooting Schedule Section
                  _buildShootingScheduleCard(jobData.schedules),
                  const SizedBox(height: 16),

                  // Implementation Schedule Section
                  _buildImplementationScheduleCard(jobData.scheduleProcesses),
                  const SizedBox(height: 16),

                  // Client Information Section
                  _buildClientInfoCard(jobData.client),
                  const SizedBox(height: 16),

                  // Statistics Section
                  _buildStatisticsCard(jobData),
                  const SizedBox(height: 16),

                  // Timeline Section
                  _buildTimelineCard(jobData),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildJobOverviewCard(GetDetailJobsResponseData jobData) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.work, color: Color(0xffFF6739), size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  jobData.title ?? 'Untitled Job',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: _getStatusColor(jobData.status),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _getStatusIcon(jobData.status),
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _getStatusText(jobData.status),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                'ID: ${jobData.id?.substring(0, 8)}...',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectDescriptionCard(GetDetailJobsResponseData jobData) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.description, color: Colors.indigo, size: 24),
              const SizedBox(width: 8),
              Text(
                'Deskripsi Job',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Text(
              jobData.description ?? 'Tidak ada deskripsi',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesCard(List<GetDetailJobsResponseCategory>? categories) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.category, color: Colors.purple, size: 24),
              const SizedBox(width: 8),
              Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (categories == null || categories.isEmpty)
            Text(
              'Tidak ada kategori',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: categories.map((category) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.purple[200]!),
                  ),
                  child: Text(
                    category.name ?? 'Unknown',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildLocationsCard(
    List<GetDetailJobsResponseLocationElement>? locations,
    List<GetDetailJobsResponseLocationElement>? locationsTalent,
  ) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.red, size: 24),
              const SizedBox(width: 8),
              Text(
                'Lokasi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Lokasi Shooting
          Text(
            'Lokasi Shooting:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          if (locations == null || locations.isEmpty)
            Text(
              'Tidak ada lokasi shooting',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            )
          else
            ...locations.map((loc) => _buildLocationItem(loc)).toList(),

          const SizedBox(height: 16),

          // Lokasi Talent
          Text(
            'Lokasi Talent:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          if (locationsTalent == null || locationsTalent.isEmpty)
            Text(
              'Tidak ada lokasi talent',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            )
          else
            ...locationsTalent.map((loc) => _buildLocationItem(loc)).toList(),
        ],
      ),
    );
  }

  Widget _buildLocationItem(dynamic location) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.place, color: Colors.red, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.location?.name ?? 'Unknown Location',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
                if (location.notes != null && location.notes!.isNotEmpty)
                  Text(
                    location.notes!,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionsCard(
      List<GetDetailJobsResponseClosedQuestion>? questions) {
    if (questions == null || questions.isEmpty) return SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.quiz, color: Colors.orange, size: 24),
              const SizedBox(width: 8),
              Text(
                'Pertanyaan Screening',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...questions.map((question) => _buildQuestionItem(question)).toList(),
        ],
      ),
    );
  }

  Widget _buildQuestionItem(GetDetailJobsResponseClosedQuestion question) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            question.yesOrNoQuestion == true
                ? Icons.check_box
                : Icons.short_text,
            color: Colors.orange,
            size: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.question ?? 'No question',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  question.yesOrNoQuestion == true
                      ? 'Yes/No Question'
                      : 'Text Question',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClientInfoCard(GetDetailJobsResponseClient? client) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person, color: Colors.teal, size: 24),
              const SizedBox(width: 8),
              Text(
                'Informasi Client',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.email, color: Colors.teal, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    client?.email ?? 'No email provided',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.teal[700],
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

  Widget _buildStatisticsCard(GetDetailJobsResponseData jobData) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.analytics, color: Colors.blue, size: 24),
              const SizedBox(width: 8),
              Text(
                'Statistik Job',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildStatItem(
                  Icons.visibility,
                  'Views',
                  jobData.totalApplications?.toString() ?? '0',
                  Colors.blue,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  Icons.people,
                  'Applications',
                  jobData.totalApplications?.toString() ?? '0',
                  Colors.green,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  Icons.trending_up,
                  'Conversion',
                  '${jobData.conversionRate?.toString() ?? '0'}%',
                  Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
      IconData icon, String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTalentsCard(List<GetDetailJobsResponseRole>? roles) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Requirements & Detail Job:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          if (roles == null || roles.isEmpty)
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Tidak ada data talent',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            )
          else
            ...roles.map((role) => _buildTalentCard(role)).toList(),
        ],
      ),
    );
  }

  Widget _buildTalentCard(GetDetailJobsResponseRole role) {
    final isMan = role.gender?.toLowerCase() == 'pria' ||
        role.gender?.toLowerCase() == 'male';
    final genderColor = isMan ? Colors.cyan : Colors.pink;
    final genderIcon = isMan ? Icons.male : Icons.female;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: genderColor[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: genderColor[100],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(
                  genderIcon,
                  color: genderColor,
                  size: 16,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                role.title ?? 'Talent',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: genderColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Gender
          Text(
            'Jenis Kelamin',
            style: TextStyle(
              fontSize: 14,
              color: genderColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            role.gender ?? 'Tidak diketahui',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: genderColor,
            ),
          ),
          const SizedBox(height: 12),

          // Age Range
          Text(
            'Rentang Usia',
            style: TextStyle(
              fontSize: 14,
              color: genderColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${role.ageMin ?? 0} - ${role.ageMax ?? 0} tahun',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: genderColor,
            ),
          ),
          const SizedBox(height: 12),

          // Description
          Text(
            'Deskripsi',
            style: TextStyle(
              fontSize: 14,
              color: genderColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            role.description ?? 'Tidak ada deskripsi',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),

          // Budget
          Text(
            'Budget',
            style: TextStyle(
              fontSize: 14,
              color: genderColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _formatCurrency(role.paymentAmount),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green[600],
            ),
          ),

          // Budget setelah moderasi
          if (role.paymentModerasi != null &&
              role.paymentModerasi!.isNotEmpty &&
              role.paymentModerasi != '0' &&
              role.paymentModerasi != '0.00') ...[
            const SizedBox(height: 12),
            Text(
              'Budget setelah moderasi',
              style: TextStyle(
                fontSize: 14,
                color: genderColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              _formatCurrency(role.paymentModerasi),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
          ],

          // Payment Type
          if (role.paymentType != null && role.paymentType!.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(
              'Tipe Pembayaran',
              style: TextStyle(
                fontSize: 14,
                color: genderColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              role.paymentType!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: genderColor,
              ),
            ),
          ],

          // Count needed
          // if (role.countNeeded != null && role.countNeeded! > 0) ...[
          //   const SizedBox(height: 12),
          //   Text(
          //     'Jumlah Dibutuhkan',
          //     style: TextStyle(
          //       fontSize: 14,
          //       color: genderColor,
          //     ),
          //   ),
          //   const SizedBox(height: 4),
          //   Text(
          //     '${role.countNeeded} orang',
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.bold,
          //       color: genderColor,
          //     ),
          //   ),
          // ],

          // Additional Charges
          if (role.additionalCharges != null &&
              role.additionalCharges!.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(
              'Biaya Tambahan',
              style: TextStyle(
                fontSize: 14,
                color: genderColor,
              ),
            ),
            const SizedBox(height: 8),
            ...role.additionalCharges!.map((charge) => Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: genderColor[100],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        charge.description ?? 'Unknown',
                        style: TextStyle(
                          fontSize: 12,
                          color: genderColor,
                        ),
                      ),
                      Text(
                        _formatCurrency(charge.amount),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: genderColor,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ],
      ),
    );
  }

  Widget _buildShootingScheduleCard(
      List<GetDetailJobsResponseSchedule>? schedules) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.event, color: Colors.orange, size: 24),
              const SizedBox(width: 8),
              Text(
                'Jadwal Event',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (schedules == null || schedules.isEmpty)
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Tidak ada jadwal event',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            )
          else
            ...schedules.asMap().entries.map((entry) {
              final index = entry.key;
              final schedule = entry.value;
              return _buildScheduleCard(schedule, index + 1);
            }).toList(),
        ],
      ),
    );
  }

  Widget _buildImplementationScheduleCard(
      List<GetDetailJobsResponseSchedule>? scheduleProcesses) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.settings, color: Colors.blue, size: 24),
              const SizedBox(width: 8),
              Text(
                'Jadwal Proses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (scheduleProcesses == null || scheduleProcesses.isEmpty)
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Tidak ada jadwal proses',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            )
          else
            ...scheduleProcesses.asMap().entries.map((entry) {
              final index = entry.key;
              final schedule = entry.value;
              return _buildProcessScheduleCard(schedule, index + 1);
            }).toList(),
        ],
      ),
    );
  }

  Widget _buildScheduleCard(
      GetDetailJobsResponseSchedule schedule, int dayNumber) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              _getScheduleIcon(schedule.scheduleType),
              color: Colors.orange,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  schedule.scheduleType ?? 'Event',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 14,
                  ),
                ),
                Text(
                  _formatDate(schedule.startTime),
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                  ),
                ),
                if (schedule.startTime != null && schedule.endTime != null)
                  Text(
                    '${_formatTime(schedule.startTime)} - ${_formatTime(schedule.endTime)}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                if (schedule.notes != null && schedule.notes!.isNotEmpty)
                  Text(
                    schedule.notes!,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProcessScheduleCard(
      GetDetailJobsResponseSchedule schedule, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              _getScheduleIcon(schedule.scheduleType),
              color: Colors.blue,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  schedule.scheduleType ?? 'Proses $index',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
                Text(
                  _formatDate(schedule.startTime),
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                  ),
                ),
                if (schedule.startTime != null && schedule.endTime != null)
                  Text(
                    '${_formatTime(schedule.startTime)} - ${_formatTime(schedule.endTime)}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                if (schedule.notes != null && schedule.notes!.isNotEmpty)
                  Text(
                    schedule.notes!,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData _getScheduleIcon(String? scheduleType) {
    switch (scheduleType?.toLowerCase()) {
      case 'workshop':
        return Icons.school;
      case 'fitting':
        return Icons.checkroom;
      case 'reading':
        return Icons.menu_book;
      case 'rehearsal':
        return Icons.theater_comedy;
      case 'meeting':
        return Icons.meeting_room;
      default:
        return Icons.event;
    }
  }

  Widget _buildTimelineCard(GetDetailJobsResponseData jobData) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.schedule, color: Colors.red, size: 24),
              const SizedBox(width: 8),
              Text(
                'Timeline',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Job Created
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(
                  Icons.create,
                  color: Colors.orange,
                  size: 16,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Created',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _formatDateTime(jobData.createdAt),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Status
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: _getStatusColor(jobData.status).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(
                  _getStatusIcon(jobData.status),
                  color: _getStatusColor(jobData.status),
                  size: 16,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getStatusText(jobData.status),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      _formatDateTime(jobData.updatedAt),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Admin Notes
          if (jobData.statusNote != null && jobData.statusNote!.isNotEmpty) ...[
            Row(
              children: [
                Icon(Icons.info_outline, color: Colors.cyan, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Catatan Admin',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.cyan[50],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.cyan[200]!),
              ),
              child: Text(
                jobData.statusNote!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Action Button
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                _showJobCompletionDialog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'SELESAIKAN JOB',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatCurrency(String? amount) {
    if (amount == null || amount.isEmpty) return 'IDR 0';

    final numericAmount = double.tryParse(amount)?.toInt() ?? 0;
    return 'IDR ${numericAmount.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
  }

  Color _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
      case 'publish':
        return Colors.green;
      case 'rejected':
      case 'reject':
        return Colors.red;
      case 'in_review':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  IconData _getStatusIcon(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
      case 'publish':
        return Icons.check_circle;
      case 'rejected':
      case 'reject':
        return Icons.cancel;
      case 'in_review':
        return Icons.hourglass_empty;
      default:
        return Icons.help;
    }
  }

  String _getStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
      case 'publish':
        return 'Approved';
      case 'rejected':
      case 'reject':
        return 'Rejected';
      case 'in_review':
        return 'In Review';
      default:
        return 'Unknown Status';
    }
  }

  String _formatDate(DateTime? dateTime) {
    if (dateTime == null) return 'Tanggal tidak tersedia';

    final months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

    final days = [
      'Minggu',
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu'
    ];

    return '${days[dateTime.weekday % 7]}, ${dateTime.day} ${months[dateTime.month - 1]} ${dateTime.year}';
  }

  String _formatTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return 'Waktu tidak tersedia';

    return '${_formatDate(dateTime)} pukul ${_formatTime(dateTime)}';
  }

  void _showJobCompletionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi'),
          content: Text('Apakah Anda yakin ingin menyelesaikan job ini?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Job berhasil diselesaikan')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: Text('Selesaikan'),
            ),
          ],
        );
      },
    );
  }
}
