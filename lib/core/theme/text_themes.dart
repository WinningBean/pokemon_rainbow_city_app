import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_colors.dart';

/// 텍스트 테마 정의

/// lightTheme 텍스트 테마
final TextTheme lightTextTheme = TextTheme(
  displayLarge: TextStyle(fontSize: 40),
  displayMedium: TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.violet500,
    fontSize: 30,
  ),
  labelLarge: TextStyle(fontSize: 18),
  labelMedium: TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  ),
  labelSmall: TextStyle(
    fontSize: 13, fontWeight: FontWeight.bold,
    height: 1.23,
    letterSpacing: 0,
  ),
  titleLarge: TextStyle(
    fontSize: 32, fontWeight: FontWeight.bold,
    height: 1.25,
    letterSpacing: 0,
    ),
  titleMedium: TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold,
    height: 1.33,
    letterSpacing: 0,
  ),
  titleSmall: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold,
    height: 1.125,
    letterSpacing: 0,
  ),
  bodyLarge: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold,
    height: 1.33,
    letterSpacing: 0,
    ),
  bodyMedium: TextStyle(
    fontSize: 16, fontWeight: FontWeight.bold,
    height: 1.5,
    letterSpacing: 0,
  ),
  bodySmall: TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold,
    height: 1.14,
    letterSpacing: 0,
  ),
   caption : TextStyle(
    fontSize: 13, fontWeight: FontWeight.bold,
    height: 1.23,
    letterSpacing: 0,
  ),
);

/// darkTheme 텍스트 테마
final TextTheme darkTextTheme = TextTheme(
  displayLarge: TextStyle(color: Colors.white, fontSize: 40),
  displayMedium: TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.violet500,
    fontSize: 30,
  ),
  labelLarge: TextStyle(fontSize: 18),
  labelMedium: TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  ),
    labelSmall: TextStyle(
    fontSize: 13, fontWeight: FontWeight.bold,
    height: 1.23,
    letterSpacing: 0,
  ),
    titleLarge: TextStyle(
    fontSize: 32, fontWeight: FontWeight.bold,
    height: 1.25,
    letterSpacing: 0,
    ),
  titleMedium: TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold,
    height: 1.33,
    letterSpacing: 0,
  ),
  titleSmall: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold,
    height: 1.125,
    letterSpacing: 0,
  ),
  bodyLarge: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold,
    height: 1.33,
    letterSpacing: 0,
    ),
  bodyMedium: TextStyle(
    fontSize: 16, fontWeight: FontWeight.bold,
    height: 1.5,
    letterSpacing: 0,
  ),
  bodySmall: TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold,
    height: 1.14,
    letterSpacing: 0,
  ),
   caption : TextStyle(
    fontSize: 13, fontWeight: FontWeight.bold,
    height: 1.23,
    letterSpacing: 0,
   ),
);
