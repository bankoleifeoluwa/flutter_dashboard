import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/const/constant.dart';
import 'package:flutter_dashboard/data/line_chart_data.dart';
import 'package:flutter_dashboard/widgets/custom_card_widget.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(handleBuiltInTouches: true),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                          getTitlesWidget: (value, meta) {
                            return data.leftTitle[value.toInt()] != null
                                ? Text(
                                    data.leftTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[400]),
                                  )
                                : const SizedBox();
                          },
                          showTitles: true,
                          interval: 1,
                          reservedSize: 40)),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[400]),
                                ),
                                axisSide: meta.axisSide)
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                      barWidth: 2.5,
                      belowBarData: BarAreaData(),
                      gradient: LinearGradient(
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter,
                          colors: [
                            selectionColor.withOpacity(0.5),
                            Colors.transparent
                          ]),
                      show: true,
                      dotData: FlDotData(show: false),
                      spots: data.spots,
                      color: selectionColor),
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
