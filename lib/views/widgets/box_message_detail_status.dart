import 'package:flutter/material.dart';

import '../../models/chat_message.dart';
import 'check_condition_widget.dart';

class BoxMessageDetailStatus extends StatelessWidget {
  const BoxMessageDetailStatus({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor;
    final IconData icon;

    switch (chatMessage.status) {
      case ChatMessageStatus.notSent:
        backgroundColor = Theme.of(context).errorColor;
        icon = Icons.priority_high;
        break;
      default:
        backgroundColor = Theme.of(context).primaryColor;
        icon = Icons.check;
    }

    return CheckCondition(
      exception: chatMessage.isSender &&
          chatMessage.status != ChatMessageStatus.viewed,
      ifTrue: Container(
        width: 14,
        height: 14,
        margin: const EdgeInsets.only(bottom: 2, left: 5),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
