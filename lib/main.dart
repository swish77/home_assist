import 'package:flutter/material.dart';
import 'package:home_assist/features/navigation/presentation/screens/main_navigation_screen.dart';
import 'app/theme/app_theme.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;
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
      home: MainNavigationScreen(),
    );
  }
}