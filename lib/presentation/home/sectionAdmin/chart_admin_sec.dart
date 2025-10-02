import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WeeklyActivityChart extends StatefulWidget {
  const WeeklyActivityChart({super.key});

  @override
  State<WeeklyActivityChart> createState() => _WeeklyActivityChartState();
}

class _WeeklyActivityChartState extends State<WeeklyActivityChart> {
  final List<ChartData> chartData = [
    ChartData(0, 45, 'Sen', 'Senin'),
    ChartData(1, 52, 'Sel', 'Selasa'),
    ChartData(2, 38, 'Rab', 'Rabu'),
    ChartData(3, 61, 'Kam', 'Kamis'),
    ChartData(4, 55, 'Jum', 'Jumat'),
    ChartData(5, 67, 'Sab', 'Sabtu'),
    ChartData(6, 43, 'Min', 'Minggu'),
  ];

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Aktivitas Mingguan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 16),

          // Chart
          Expanded(
            child: BarChart(
              BarChartData(
                maxY: 80,
                minY: 0,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 20,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: Colors.grey.shade300,
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        final index = value.toInt();
                        if (index >= 0 && index < chartData.length) {
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: Text(
                              chartData[index].shortName,
                              style: TextStyle(
                                color: touchedIndex == index
                                    ? Colors.red.shade700
                                    : Colors.black54,
                                fontWeight: touchedIndex == index
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          );
                        }
                        return const SizedBox();
                      },
                      reservedSize: 38,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 20,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            '${value.toInt()}',
                            style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        );
                      },
                      reservedSize: 32,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border(
                    left: BorderSide(color: Colors.grey.shade300),
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                barGroups: chartData.map((data) {
                  return makeGroupData(
                    data.x,
                    data.value,
                    touchedIndex == data.x,
                  );
                }).toList(),
                barTouchData: BarTouchData(
                  enabled: true,
                  touchCallback: (FlTouchEvent event, barTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          barTouchResponse == null ||
                          barTouchResponse.spot == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          barTouchResponse.spot!.touchedBarGroupIndex;
                    });
                  },
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (group) => Colors.red.shade700,
                    tooltipRoundedRadius: 8,
                    tooltipMargin: 10,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      if (groupIndex >= 0 && groupIndex < chartData.length) {
                        final data = chartData[groupIndex];
                        return BarTooltipItem(
                          '${data.fullName}\n${rod.toY.toInt()}',
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        );
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
          ),

          // Summary Cards
          Column(
            children: [
              Text(
                'Total aplikasi minggu ini ',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 5),
              Text(
                '${chartData.fold<double>(0, (sum, item) => sum + item.value).toInt()}',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y, bool isTouched) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: isTouched ? Colors.red.shade700 : Colors.red,
          width: isTouched ? 28 : 24,
          borderRadius: BorderRadius.circular(6),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 80,
            color: Colors.grey.shade200,
          ),
        ),
      ],
    );
  }
}

class ChartData {
  final int x;
  final double value;
  final String shortName;
  final String fullName;

  ChartData(this.x, this.value, this.shortName, this.fullName);
}
