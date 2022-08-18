import 'package:flutter/material.dart';

import '../../models/chat.dart';
import '../../models/chat_message.dart';
import 'box_message_detail_content.dart';
import 'box_message_detail_status.dart';

class BoxMessageDetail extends StatelessWidget {
  const BoxMessageDetail({
    Key? key,
    required this.chatMessage,
    this.chat,
  }) : super(key: key);

  final ChatMessage chatMessage;
  final Chat? chat;

  @override
  Widget build(BuildContext context) {
    final Widget avartar;

    if (chat != null && !chatMessage.isSender) {
      avartar = Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Image.asset(
          chat!.image,
          width: 30,
          height: 30,
        ),
      );
    } else {
      avartar = const SizedBox.shrink();
    }

    return Row(
      mainAxisAlignment: chatMessage.isSender
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        avartar,
        BoxMessageDetailContext(chatMessage: chatMessage),
        BoxMessageDetailStatus(chatMessage: chatMessage),
      ],
    );
  }
}
