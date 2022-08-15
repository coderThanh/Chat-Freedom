import 'package:flutter/material.dart';

TextTheme textTheme(BuildContext context) {
  return const TextTheme(
    titleMedium: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 18, height: 1.4),
    bodyMedium: TextStyle(fontSize: 15, height: 1.4),
    bodySmall: TextStyle(fontSize: 13, height: 1.4),
  );
}

TextTheme textThemeDark(BuildContext context) {
  return textTheme(context).copyWith();
}
