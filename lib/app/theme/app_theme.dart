import 'package:flutter/material.dart';
import 'package:home_assist/app/theme/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.seed,
        brightness: Brightness.light,
      ),

      scaffoldBackgroundColor: Colors.grey.shade50,

      appBarTheme: const AppBarTheme(
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

      cardTheme: CardThemeData(
        elevation: 2,
        // color: AppColors.seed.shade500,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5, color: AppColors.seed, ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(double.infinity, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppColors.seed)
        ),
        enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(16),
          // borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.seed)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.seed)
          // borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
    );
  }
}