import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF0D0B12);
  static const surface = Color(0xFF17131D);
  static const surfaceLight = Color(0xFF211A2A);

  static const purple = Color(0xFF9B5CFF);
  static const neonPurple = Color(0xFFC084FC);
  static const deepPurple = Color(0xFF6D28D9);

  static const textPrimary = Color(0xFFF5F2FA);
  static const textSecondary = Color(0xFFAAA2B5);
  static const border = Color(0xFF33283F);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.purple,
        secondary: AppColors.neonPurple,
        surface: AppColors.surface,
      ),
      dividerColor: AppColors.border,

      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 56,
          fontWeight: FontWeight.w700,
          height: 1.05,
        ),
        headlineLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 38,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          color: AppColors.textSecondary,
          fontSize: 17,
          height: 1.6,
        ),
        bodyMedium: TextStyle(
          color: AppColors.textSecondary,
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }
}
