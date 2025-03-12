import 'package:flutter/material.dart';
import 'package:random_user_generator/logic/config/theme/theme_constrains.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: LightModeColors.mainColor,
    primary: LightModeColors.primaryColor
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      surface: DarkModeColors.mainColor,
      primary: DarkModeColors.primaryColor
  )
);