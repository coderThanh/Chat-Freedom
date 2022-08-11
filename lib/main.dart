import 'package:flutter/material.dart';

import 'models/theme_data.dart';
import 'views/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Fultter',
      theme: themeDataLight(context),
      darkTheme: themeDataDark(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
