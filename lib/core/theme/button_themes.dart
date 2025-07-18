import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_colors.dart';

/// 버튼 테마 정의

/// FilledButton 테마
final FilledButtonThemeData filledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    backgroundColor: AppColors.violet500,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    foregroundColor: Colors.white,
    textStyle: const TextStyle(
      fontSize: 18,
      height: 1.33,
      fontFamily: 'PFStardust',
    ),
  ),
);

/// OutlinedButton 테마
final OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: AppColors.violet500,
    side: const BorderSide(color: AppColors.violet500, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: const TextStyle(
      fontSize: 18,
      height: 1.33,
      fontFamily: 'PFStardust',
    ),
  ),
);

/// FloatingActionButton 테마
final FloatingActionButtonThemeData floatingActionButtonTheme =
    FloatingActionButtonThemeData(
      backgroundColor: AppColors.violet500,
      foregroundColor: Colors.white,
      shape: const CircleBorder(),
      elevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      extendedTextStyle: const TextStyle(
        fontSize: 16,
        height: 1.3,
        fontFamily: 'PFStardust',
      ),
    );
