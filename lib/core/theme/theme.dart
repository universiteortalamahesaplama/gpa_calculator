import 'package:flutter/material.dart';
import 'package:gpa_calculator/product/utility/constants/colors.dart';

class ApplicationTheme {
  ThemeData lightTheme = ThemeData().copyWith(
    brightness: Brightness.light,
    primaryColor: ColorData.primaryColor,
    textTheme: TextTheme(
      titleLarge: ThemeData().textTheme.titleLarge?.copyWith(
            color: ColorData.textColor,
          ),
    ),
    appBarTheme: AppBarTheme(
      color: ColorData.primaryColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: const IconThemeData(color: ColorData.backgroundColor),
      titleTextStyle: ThemeData().textTheme.titleLarge?.copyWith(
            color: ColorData.backgroundColor,
          ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: ColorData.primaryColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorData.primaryColor,
      foregroundColor: ColorData.backgroundColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorData.primaryColor,
        alignment: Alignment.center,
      ),
    ),
    iconTheme: const IconThemeData(color: ColorData.primaryColor),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: ColorData.secondaryColor,
    ),
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: ColorData.backgroundColor,
      prefixIconColor: ColorData.primaryColor,
      suffixIconColor: ColorData.primaryColor,
      errorMaxLines: 5,
      iconColor: ColorData.primaryColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorData.primaryColor,
    ),
  );
}
