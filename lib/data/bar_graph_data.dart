import 'package:flutter/material.dart';
import 'package:flutter_dashboard/models/bar_graph_model.dart';
import 'package:flutter_dashboard/models/graph_model.dart';

class BarGraphData {
  final data = [
    BarGraphModel(
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
      ],
      label: "Activity Level",
      color: Color(0xFFFEB95A),
    ),
    BarGraphModel(
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 9),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 6),
        GraphModel(x: 5, y: 7),
      ],
      label: "Nutrition",
      color: Color(0xFFF2c8ED),
    ),
    BarGraphModel(
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
      label: "Hydration Level",
      color: Color(0xFF20AEF3),
    )
  ];
  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
