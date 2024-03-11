import 'package:flutter/material.dart';

import 'graph_model.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;
  BarGraphModel(
      {required this.graph, required this.label, required this.color});
}
