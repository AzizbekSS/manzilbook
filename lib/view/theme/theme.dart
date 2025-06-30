// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:manzilbook/view/theme/color.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  colorScheme: ColorScheme.light(
    primary: Colors.grey,
    secondary: Colors.black,
    surface: Colors.black,
    onPrimary: Colors.grey.shade200,
  ),
   chipTheme: ChipThemeData(
  side: BorderSide(
    color: Colors.white
  ),
    selectedColor: mainColor,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey,
    secondary: Colors.white30,
    surface: Colors.white,
    onPrimary: Colors.grey.shade700,
  ),
  chipTheme: ChipThemeData(
    side: BorderSide(
      color: Colors.black,
    ),
    selectedColor: mainColor,
  ),
);
