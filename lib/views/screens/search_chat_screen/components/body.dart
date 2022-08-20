import 'package:flutter/material.dart';

import 'body_chats.dart';

class BodySearchChatScreen extends StatelessWidget {
  const BodySearchChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        BodyChatOfSearchScreen(),
        Center(
          child: Text('Hello Search'),
        ),
        Center(
          child: Text('Hello Search'),
        ),
        Center(
          child: Text('Hello Search'),
        ),
      ],
    );
  }
}
