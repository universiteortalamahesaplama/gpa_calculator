import 'package:flutter/material.dart';
import 'package:gpa_calculator/core/theme/theme.dart';
import 'package:gpa_calculator/feature/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPA Calculator',
      theme: ApplicationTheme().lightTheme,
      home: const Home(),
    );
  }
}