import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_color_alias.dart';

/// 버튼 테마 정의

/// FilledButton 테마
final FilledButtonThemeData filledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    backgroundColor: AppColorAlias.brandPrimary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.all(8.0),
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontSize: 18, fontFamily: 'PFStardust'),
  ),
);

/// OutlinedButton 테마
final OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: AppColorAlias.brandPrimary,
    side: const BorderSide(color: AppColorAlias.brandPrimary, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.all(8.0),
    textStyle: const TextStyle(fontSize: 18, fontFamily: 'PFStardust'),
  ),
);

/// FloatingActionButton 테마
final FloatingActionButtonThemeData floatingActionButtonTheme = FloatingActionButtonThemeData(
  backgroundColor: AppColorAlias.brandPrimary,
  foregroundColor: AppColorAlias.foundationWhite,
  shape: const CircleBorder(),
  elevation: 0,
  highlightElevation: 0,
  focusElevation: 0,
  hoverElevation: 0,
  disabledElevation: 0,
  extendedTextStyle: const TextStyle(fontSize: 16, fontFamily: 'PFStardust'),
);
