import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import 'components/app_bar.dart';
import 'components/body.dart';
import 'components/bottom_navigator.dart';

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
      appBar: appBarChatMessage(context, chat: chat),
      bottomNavigationBar: const BottomNavigatorChatMessageDetail(),
      body: BodyChatMessage(chat: chat),
    );
  }
}
