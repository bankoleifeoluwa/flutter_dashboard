import 'package:flutter/material.dart';
import 'package:flutter_dashboard/const/constant.dart';
import 'package:flutter_dashboard/screens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard UI",
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      home: MainScreen(),
    );
  }
}
