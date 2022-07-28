import 'package:flutter/material.dart';

class CustomBottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    required this.icon,
    //required this.title,
    this.titleTextColor = const Color(0XFFFFFFFF),
  }) : assert(icon != null);
  // assert(title.isNotEmpty);
  final String icon;
  // final String title;
  final Color titleTextColor;
}
