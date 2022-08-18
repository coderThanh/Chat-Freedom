import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/chat_message.dart';
import '../../../../models/theme_const.dart';
import '../../../widgets/box_message_detail_widget.dart';

class BodyChatMessage extends StatelessWidget {
  const BodyChatMessage({
    Key? key,
    this.chat,
  }) : super(key: key);

  final Chat? chat;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: ThemeConst.padding,
        horizontal: ThemeConst.padding * 0.5,
      ),
      shrinkWrap: true,
      reverse: true,
      itemCount: demeChatMessages.length,
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: ThemeConst.padding,
      ),
      itemBuilder: (context, index) {
        final int reverseIndex = demeChatMessages.length - 1 - index;

        return BoxMessageDetail(
          chatMessage: demeChatMessages[reverseIndex],
          chat: chat,
        );
      },
    );
  }
}
