import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_color_alias.dart';
import 'package:pokemon_rainbow_city_app/core/theme/button_themes.dart';
import 'package:pokemon_rainbow_city_app/core/theme/color_schemes.dart';
import 'package:pokemon_rainbow_city_app/core/theme/cupertino_themes.dart';
import 'package:pokemon_rainbow_city_app/core/theme/text_themes.dart';

final lightTheme = ThemeData(
  fontFamily: 'PFStardust',
  colorScheme: lightColorScheme,
  scaffoldBackgroundColor: AppColorAlias.foundationWhite,
  dividerColor: AppColorAlias.foundationLine,
  highlightColor: AppColorAlias.brandPrimary,
  disabledColor: AppColorAlias.foundationLine,
  textTheme: lightTextTheme,
  filledButtonTheme: filledButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  floatingActionButtonTheme: floatingActionButtonTheme,
  cupertinoOverrideTheme: cupertinoTheme,
);

final darkTheme = ThemeData(
  fontFamily: 'PFStardust',
  colorScheme: darkColorScheme,
  scaffoldBackgroundColor: AppColorAlias.foundationPrimary,
  dividerColor: AppColorAlias.foundationLine,
  highlightColor: AppColorAlias.brandPrimary,
  disabledColor: AppColorAlias.foundationLine,
  textTheme: darkTextTheme,
  filledButtonTheme: filledButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  floatingActionButtonTheme: floatingActionButtonTheme,
  cupertinoOverrideTheme: cupertinoTheme,
);
