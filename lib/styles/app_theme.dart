import 'package:flutter/material.dart';

class AppTheme{

  final bool colorThema ;

  AppTheme({required this.colorThema});

  ThemeData getTheme() {
    return ThemeData(
      brightness: colorThema ? Brightness.dark : Brightness.light,
    );
  }
  
}