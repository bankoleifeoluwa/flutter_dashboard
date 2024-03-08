import 'package:flutter/material.dart';
import 'package:flutter_dashboard/models/menu_model.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.person, title: 'profile'),
    MenuModel(icon: Icons.run_circle, title: 'Excercise'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.history, title: 'History'),
    MenuModel(icon: Icons.logout, title: 'SignOut'),
  ];
}
