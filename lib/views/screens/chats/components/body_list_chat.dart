import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../widgets/box_chat_widget.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return BoxChat(
          chat: demoChatsData[index],
        );
      }),
      itemCount: demoChatsData.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
