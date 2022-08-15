import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/body.dart';
import '../../widgets/bottom_navigation_bar.dart';
import 'components/float_button.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarChats(context),
      body: const BodyChat(),
      bottomNavigationBar: const BottomNavigationMainTheme(
        current: 0,
      ),
      floatingActionButton: const FloatButtonChats(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
