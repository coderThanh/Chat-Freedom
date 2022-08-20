import 'package:flutter/material.dart';

import '../../widgets/bottom_navigation_bar.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPeopleScreen(context),
      body: const BodyPeopleScreen(),
      bottomNavigationBar: const BottomNavigationMainTheme(current: 1),
    );
  }
}
