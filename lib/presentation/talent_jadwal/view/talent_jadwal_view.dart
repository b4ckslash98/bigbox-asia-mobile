import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/talent_jadwal_cubit.dart';
import '../../../lib.dart';

@RoutePage()
class TalentJadwalView extends StatefulWidget implements AutoRouteWrapper {
  const TalentJadwalView({super.key});

  @override
  State<TalentJadwalView> createState() => _TalentJadwalViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TalentJadwalCubit>(
      create: (context) => di()..getScheduleTalentUsecase(),
      child: this,
    );
  }
}

class _TalentJadwalViewState extends State<TalentJadwalView> {
  CalendarController _controller = CalendarController();
  DateTime _selectedDate = DateTime(2025, 8, 14);

  final Map<String, Color> statusColors = {
    'tersedia': Colors.green.shade50,
    'tentatif': Colors.amber.shade50,
    'tidak_tersedia_sementara': Colors.blue.shade50,
    'tidak_tersedia': Colors.grey.shade200,
  };

  final Map<String, Color> statusBorderColors = {
    'tersedia': Colors.green.shade400,
    'tentatif': Colors.amber.shade400,
    'tidak_tersedia_sementara': Colors.blue.shade400,
    'tidak_tersedia': Colors.grey.shade500,
  };

  final Map<String, Color> statusTextColors = {
    'tersedia': Colors.green.shade700,
    'tentatif': Colors.amber.shade700,
    'tidak_tersedia_sementara': Colors.blue.shade700,
    'tidak_tersedia': Colors.grey.shade700,
  };

  late Map<String, String> _dateStatusMap;

  @override
  void initState() {
    super.initState();
    _controller.selectedDate = _selectedDate;
    _dateStatusMap = {};
  }

  void _updateDateStatusMap(List<DatumGetScheduleTalent> apiData) {
    _dateStatusMap.clear();
    for (var item in apiData) {
      if (item.date != null && item.status != null) {
        String dateStr = DateFormat('yyyy-MM-dd').format(item.date!);
        _dateStatusMap[dateStr] = item.status!;
      }
    }
  }

  String? _getStatusForDate(DateTime date) {
    String dateKey = DateFormat('yyyy-MM-dd').format(date);
    return _dateStatusMap[dateKey];
  }

  void _openBulkSet(BuildContext context) async {
    final result = await context.router.push(TalentDetailBulkSetRoute());
    if (result == true) {
      // Refresh jadwal setelah kembali dari BulkSet
      context.read<TalentJadwalCubit>().getScheduleTalentUsecase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(
          'Jadwal Ketersediaan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xffFF6739),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey.shade800),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SizedBox(
              height: 30,
              child: ElevatedButton.icon(
                onPressed: () => _openBulkSet(context),
                icon: Icon(Icons.add, size: 18),
                label: Text(
                  'Bulk Set',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<TalentJadwalCubit, TalentJadwalState>(
        builder: (context, state) {
          final apiData = state.scheduleTalent?.data ?? [];
          _updateDateStatusMap(apiData);

          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: SfCalendar(
                    view: CalendarView.month,
                    controller: _controller,
                    firstDayOfWeek: 1,
                    initialSelectedDate: _selectedDate,
                    todayHighlightColor: Colors.blue.shade400,
                    onSelectionChanged: (CalendarSelectionDetails details) {
                      if (details.date != null) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {
                            _selectedDate = details.date!;
                          });
                        });
                      }
                    },
                    headerStyle: CalendarHeaderStyle(
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    viewHeaderStyle: ViewHeaderStyle(
                      dayTextStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    monthViewSettings: MonthViewSettings(
                      showAgenda: false,
                      monthCellStyle: MonthCellStyle(
                        backgroundColor: Colors.transparent,
                        todayBackgroundColor: Colors.transparent,
                        leadingDatesBackgroundColor: Colors.transparent,
                        trailingDatesBackgroundColor: Colors.transparent,
                      ),
                    ),
                    selectionDecoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.blue.shade400,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    monthCellBuilder:
                        (BuildContext context, MonthCellDetails details) {
                      final date = details.date;
                      final status = _getStatusForDate(date);
                      final isToday = _isToday(date);
                      final isSelected = _isSelected(date);
                      final isCurrentMonth =
                          details.visibleDates.contains(date);

                      Color backgroundColor = Colors.transparent;
                      Color? borderColor;
                      Color textColor = Colors.grey.shade700;

                      if (!isCurrentMonth) {
                        backgroundColor = Colors.transparent;
                        textColor = Colors.grey.shade400;
                      } else if (status != null) {
                        backgroundColor =
                            statusColors[status] ?? Colors.transparent;
                        borderColor = statusBorderColors[status];
                        textColor =
                            statusTextColors[status] ?? Colors.grey.shade700;
                      } else if (isToday) {
                        backgroundColor = Colors.blue.shade50;
                        borderColor = Colors.blue.shade300;
                        textColor = Colors.blue.shade700;
                      } else {
                        backgroundColor = Color(0xFFFAF9F6);
                        textColor = Colors.grey.shade700;
                      }

                      return Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(12),
                          border: borderColor != null
                              ? Border.all(color: borderColor, width: 1.5)
                              : null,
                          boxShadow: status != null
                              ? [
                                  BoxShadow(
                                    color: (statusBorderColors[status] ??
                                            Colors.grey)
                                        .withOpacity(0.2),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ]
                              : null,
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Text(
                                '${date.day}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: isToday || isSelected
                                      ? FontWeight.w700
                                      : FontWeight.w500,
                                  color: textColor,
                                ),
                              ),
                            ),
                            if (status != null)
                              Positioned(
                                top: 4,
                                right: 4,
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: statusBorderColors[status],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 16),
                //   padding: EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(16),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withOpacity(0.05),
                //         blurRadius: 15,
                //         offset: Offset(0, 3),
                //       ),
                //     ],
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'Keterangan Status',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w600,
                //           color: Colors.grey.shade800,
                //         ),
                //       ),
                //       SizedBox(height: 16),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           _buildLegendItem(
                //             'Tersedia',
                //             statusColors['tersedia']!,
                //             statusBorderColors['tersedia']!,
                //             Icons.check_circle_outline,
                //           ),
                //           _buildLegendItem(
                //             'Tentatif',
                //             statusColors['tentatif']!,
                //             statusBorderColors['tentatif']!,
                //             Icons.schedule_outlined,
                //           ),
                //           _buildLegendItem(
                //             'Tidak Tersedia Sementara',
                //             statusColors['tidak_tersedia_sementara']!,
                //             statusBorderColors['tidak_tersedia_sementara']!,
                //             Icons.hourglass_empty,
                //           ),
                //           _buildLegendItem(
                //             'Tidak Tersedia',
                //             statusColors['tidak_tersedia']!,
                //             statusBorderColors['tidak_tersedia']!,
                //             Icons.block_outlined,
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 15,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ringkasan Jadwal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(height: 16),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          _buildStatusItem(
                            Icons.check_circle,
                            Colors.green,
                            'Tersedia',
                            'Jadwal yang dapat dipesan',
                            apiData
                                .where((item) => item.status == 'tersedia')
                                .length,
                          ),
                          _buildStatusItem(
                            Icons.schedule,
                            Colors.amber,
                            'Tentatif',
                            'Jadwal dalam proses konfirmasi',
                            apiData
                                .where((item) => item.status == 'tentatif')
                                .length,
                          ),
                          _buildStatusItem(
                            Icons.hourglass_empty,
                            Colors.blue,
                            'Tidak Tersedia Sementara',
                            'Jadwal tidak tersedia sementara',
                            apiData
                                .where((item) =>
                                    item.status == 'tidak_tersedia_sementara')
                                .length,
                          ),
                          _buildStatusItem(
                            Icons.block,
                            Colors.grey,
                            'Tidak Tersedia',
                            'Jadwal tidak tersedia',
                            apiData
                                .where(
                                    (item) => item.status == 'tidak_tersedia')
                                .length,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildLegendItem(
      String label, Color bgColor, Color borderColor, IconData icon) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: borderColor, width: 1.5),
          ),
          child: Icon(icon, color: borderColor, size: 20),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusItem(
      IconData icon, Color color, String label, String desc, int count) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$label ($count)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  bool _isSelected(DateTime date) {
    return date.year == _selectedDate.year &&
        date.month == _selectedDate.month &&
        date.day == _selectedDate.day;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
