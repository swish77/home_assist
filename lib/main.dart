import 'package:flutter/material.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeAssist',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Placeholder(),
    );
  }
}