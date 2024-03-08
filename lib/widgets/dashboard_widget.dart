// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/line_chart_card.dart';

import 'activity_details_card.dart';
import 'header_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        const HeaderWidget(),
        const SizedBox(height: 15),
        ActivityDetailsCard(),
        SizedBox(height: 18),
        const LineChartCard()
      ],
    );
  }
}
