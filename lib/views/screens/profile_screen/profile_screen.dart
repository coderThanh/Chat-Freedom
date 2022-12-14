import 'package:flutter/material.dart';

import '../../widgets/bottom_navigation_bar.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarProfileScreen(context: context),
      body: const BodyProFile(),
      bottomNavigationBar: const BottomNavigationMainTheme(
        current: 3,
      ),
    );
  }
}
