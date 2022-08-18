import 'package:chat_light_dark/views/screens/conversation_screen/conversation_screen.dart';
import 'package:flutter/material.dart';

class MiddleWareConverStaionScreen extends StatelessWidget {
  const MiddleWareConverStaionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dynamic args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return ConversationScreen(
      args: args,
    );
  }
}
