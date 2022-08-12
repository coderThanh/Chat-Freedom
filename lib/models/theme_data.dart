import 'package:flutter/material.dart';

import 'theme_color.dart';
import 'theme_text.dart';

ThemeData themeDataLight(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: ThemeColor.background,
    appBarTheme: appBarTheme(),
    primaryColor: ThemeColor.primary,
    splashColor: ThemeColor.splash,
    highlightColor: ThemeColor.splash,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ThemeColor.splash,
        surfaceTintColor: ThemeColor.splash,
        onSurface: ThemeColor.splash,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        elevation: 0,
      ),
    ),
    textTheme: textTheme(context).apply(
      bodyColor: ThemeColor.text,
      displayColor: ThemeColor.text,
    ),
  );
}

ThemeData themeDataDark(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ThemeColorDark.background,
    appBarTheme: appBarTheme(),
    primaryColor: ThemeColorDark.primary,
    splashColor: ThemeColorDark.splash,
    highlightColor: ThemeColorDark.splash,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ThemeColorDark.splash,
        surfaceTintColor: ThemeColorDark.splash,
        onSurface: ThemeColorDark.splash,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        elevation: 0,
      ),
    ),
    textTheme: textTheme(context).apply(
      bodyColor: ThemeColorDark.text,
      displayColor: ThemeColorDark.text,
    ),
  );
}

AppBarTheme appBarTheme() => AppBarTheme(
      centerTitle: false,
      elevation: 0,
    );
