import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/data/bar_graph_data.dart';
import 'package:flutter_dashboard/widgets/custom_card_widget.dart';

import '../models/graph_model.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    return SizedBox(
      height: 300,
      child: GridView.builder(
        itemCount: 3,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 12,
            childAspectRatio: 5 / 4),
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      barGraphData.data[index].label,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 12),
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        barGroups: _chartGroups(
                            points: barGraphData.data[index].graph,
                            color: barGraphData.data[index].color),
                        borderData: FlBorderData(
                          border: Border(),
                        ),
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    barGraphData.label[value.toInt()],
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                );
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }

  List<BarChartGroupData> _chartGroups(
      {required List<GraphModel> points, required Color color}) {
    return points
        .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 2 : 0.4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  topRight: Radius.circular(3.0),
                ),
              )
            ]))
        .toList();
  }
}
