import 'package:flutter/material.dart';

final lightTheme=ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  colorScheme: ColorScheme.light(
    primary: Colors.grey,
    secondary: Colors.black,
    surface: Colors.black,
    onPrimary:  Colors.grey.shade200,),
  );




final darkTheme=ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey,
    secondary: Colors.white30,
    surface: Colors.white,
    onPrimary: Colors.grey.shade700,),
  );
