import 'package:flutter/material.dart';

import '../../../../models/chat.dart';

class BodyChatMessage extends StatelessWidget {
  const BodyChatMessage({
    Key? key,
    this.chat,
  }) : super(key: key);

  final Chat? chat;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(chat?.name ?? 'Hello chat message screen'),
    );
  }
}
