import 'package:flutter_dashboard/models/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(
        icon: 'lib/assets/icons/burn.png',
        value: '420',
        title: 'Calories burned'),
    HealthModel(
        icon: 'lib/assets/icons/steps.png', value: '69', title: 'Steps'),
    HealthModel(
        icon: 'lib/assets/icons/distance.png', value: '7km', title: 'distanse'),
    HealthModel(
        icon: 'lib/assets/icons/sleep.png', value: '7h40m', title: 'Sleep')
  ];
}
