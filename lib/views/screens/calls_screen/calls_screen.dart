import 'package:flutter/material.dart';

import '../../widgets/bottom_navigation_bar.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCallsScreen(context),
      body: const BodyCallsScreen(),
      bottomNavigationBar: const BottomNavigationMainTheme(
        current: 2,
      ),
    );
  }
}
