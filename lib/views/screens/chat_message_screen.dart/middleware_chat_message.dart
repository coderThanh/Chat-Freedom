import 'package:flutter/material.dart';

import 'chat_message_screen.dart';

class MiddlewareChatMessageScreen extends StatelessWidget {
  const MiddlewareChatMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatMessageScreen(
      args: ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>,
    );
  }
}
