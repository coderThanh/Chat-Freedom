import 'package:flutter/material.dart';

import 'models/theme_data.dart';
import 'models/theme_route.dart';

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
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: ThemeRoute.welcome,
      routes: ThemeRoute.routes,
    );
  }
}
