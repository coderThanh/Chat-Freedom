import 'package:flutter/material.dart';

import 'conversation_screen.dart';

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
