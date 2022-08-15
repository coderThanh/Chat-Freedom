import 'package:chat_light_dark/models/chat.dart';
import 'package:chat_light_dark/views/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatMessageScreen extends StatelessWidget {
  const ChatMessageScreen({
    Key? key,
    this.args,
  }) : super(key: key);

  final Map<String, dynamic>? args;

  @override
  Widget build(BuildContext context) {
    final Chat chat = args?['chat'];

    return Scaffold(
      appBar: AppBar(),
      body: BodyChatMessage(
        chat: chat,
      ),
      bottomNavigationBar: BottomNavigationMainTheme(current: 1),
    );
  }
}
