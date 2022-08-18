import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import 'components/body.dart';
import 'components/bottom_navigator.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key, this.args}) : super(key: key);

  final Map<String, dynamic>? args;

  @override
  Widget build(BuildContext context) {
    Chat? chat = args?['chat'];

    return Scaffold(
      body: BodyConverSationScreen(chat: chat),
      extendBody: true,
      bottomNavigationBar: const BottomBarConverSationScreen(),
    );
  }
}
