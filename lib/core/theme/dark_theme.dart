import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class DarkTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.bgDark,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryLight,
      onPrimary: Colors.white,
      secondary: AppColors.gold,
      onSecondary: Colors.white,
      error: AppColors.error,
      onError: Colors.white,
      surface: AppColors.bgDarkSurface,
      onSurface: AppColors.textOnDark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bgDark,
      foregroundColor: AppColors.textOnDark,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
    ),
    cardColor: AppColors.bgDarkCard,
    dividerColor: AppColors.borderDark,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.bgDarkInput,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.borderDark, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.borderDark, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 1.5),
      ),
      hintStyle: const TextStyle(color: AppColors.textOnDarkHint),
    ),
    textTheme: const TextTheme(
      bodyLarge:  TextStyle(color: AppColors.textOnDark),
      bodyMedium: TextStyle(color: AppColors.textOnDark),
      bodySmall:  TextStyle(color: AppColors.textOnDarkMuted),
      titleLarge: TextStyle(color: AppColors.textOnDark, fontWeight: FontWeight.w600),
      titleMedium:TextStyle(color: AppColors.textOnDark, fontWeight: FontWeight.w600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryLight,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
  );
}