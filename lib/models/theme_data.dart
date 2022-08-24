import 'package:flutter/material.dart';

import 'theme_color.dart';
import 'theme_const.dart';
import 'theme_text.dart';

ThemeData themeDataLight(BuildContext context) {
  return ThemeData.light().copyWith(
    shadowColor: ThemeColor.shadown,
    backgroundColor: ThemeColor.background,
    scaffoldBackgroundColor: ThemeColor.background,
    brightness: Brightness.light,
    appBarTheme: appBarTheme(),
    primaryColor: ThemeColor.primary,
    splashColor: ThemeColor.splash,
    highlightColor: ThemeColor.splash,
    colorScheme: Theme.of(context).colorScheme.copyWith(
          onBackground: ThemeColor.text,
        ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ThemeColor.splash,
        surfaceTintColor: ThemeColor.splash,
        onSurface: ThemeColor.splash,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
    shadowColor: ThemeColorDark.shadown,
    scaffoldBackgroundColor: ThemeColorDark.background,
    backgroundColor: ThemeColorDark.background,
    brightness: Brightness.dark,
    appBarTheme: appBarTheme(),
    primaryColor: ThemeColorDark.primary,
    splashColor: ThemeColorDark.splash,
    highlightColor: ThemeColorDark.splash,
    colorScheme: Theme.of(context).colorScheme.copyWith(
          onBackground: ThemeColorDark.text,
        ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ThemeColorDark.splash,
        surfaceTintColor: ThemeColorDark.splash,
        onSurface: ThemeColorDark.splash,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        minimumSize: const Size(0, 0),
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    textTheme: textTheme(context).apply(
      bodyColor: ThemeColorDark.text,
      displayColor: ThemeColorDark.text,
    ),
  );
}

AppBarTheme appBarTheme() => AppBarTheme(
      toolbarHeight: ThemeConst.appbarHeight,
      centerTitle: true,
      elevation: 0,
      backgroundColor: ThemeColor.primary,
    );
