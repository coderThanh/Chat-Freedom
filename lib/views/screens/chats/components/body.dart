import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import 'body_list_chat.dart';

class BodyChat extends StatelessWidget {
  const BodyChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: ThemeConst.padding * 2),
        child: const ChatList(),
      ),
    );
  }
}
