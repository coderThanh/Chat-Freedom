import 'package:flutter/material.dart';

class ThemeColor {
  static Color primary = const Color(0xFF00BF6D);
  static Color secondary = const Color(0xFFFE9901);
  static Color text = const Color(0xFF1D1D35);
  static Color warning = const Color(0xFFF3BB1C);
  static Color error = const Color(0xFFF03738);
  static Color surface = const Color(0xFFFFFFFF);
  static Color background = const Color(0xFFFFFFFF);
  static Color splash = Colors.black.withOpacity(0.08);
}

class ThemeColorDark extends ThemeColor {
  static Color primary = const Color(0xFF00BF6D);
  static Color secondary = const Color(0xFFFE9901);
  static Color warning = const Color(0xFFF3BB1C);
  static Color error = const Color(0xFFF03738);
  static Color text = Colors.white;
  static Color surface = const Color(0xFF1D1D35);
  static Color background = const Color(0xFF1D1D35);
  static Color splash = Colors.white.withOpacity(0.08);
}
