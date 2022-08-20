import 'package:flutter/material.dart';

import 'chat_message_screen.dart';

class MiddlewareChatMessageScreen extends StatelessWidget {
  const MiddlewareChatMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late dynamic agrs;
    if (ModalRoute.of(context)?.settings.arguments != null) {
      agrs = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    } else {
      agrs = <String, dynamic>{};
    }
    return ChatMessageScreen(
      args: agrs,
    );
  }
}
