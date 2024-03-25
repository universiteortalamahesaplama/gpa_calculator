import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpa_calculator/core/key/state_key.dart';
import 'package:gpa_calculator/core/theme/theme.dart';
import 'package:gpa_calculator/feature/home.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: ProductKey().key.globalKey,
      title: 'GPA Calculator',
      theme: ApplicationTheme().lightTheme,
      home: const Home(),
    );
  }
}
