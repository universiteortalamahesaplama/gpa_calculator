import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gpa_calculator/product/utility/constants/colors.dart';

class ApplicationTheme {
  ThemeData lightTheme = ThemeData().copyWith(
    brightness: Brightness.light,
    primaryColor: ColorData.primaryColor,
    textTheme: TextTheme(
        titleLarge: ThemeData().textTheme.titleLarge?.copyWith(
              color: ColorData.textColor,
            ),
        labelLarge: ThemeData().textTheme.titleLarge?.copyWith(
              color: ColorData.textColor,
            ),
        labelSmall: ThemeData().textTheme.titleLarge?.copyWith(
              color: ColorData.textColor,
            ),
        bodySmall: ThemeData().textTheme.titleLarge?.copyWith(
              color: ColorData.textColor,
            ), ),
            

    appBarTheme: const AppBarTheme(
      color: ColorData.backgroundColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorData.primaryColor),
      titleTextStyle: TextStyle(
        color: ColorData.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: ColorData.primaryColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorData.primaryColor,
      foregroundColor: ColorData.backgroundColor,
      shape: CircleBorder(),
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
