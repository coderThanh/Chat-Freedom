import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/button_icon_text_widget.dart';
import '../../../widgets/list_avatar_text_widget.dart';

AppBar appBarChatMessage(BuildContext context, {Chat? chat}) {
  final Size size = MediaQuery.of(context).size;
  const Size sizeIcon = Size(40, 40);
  const double iconFontSize = 24;
  final Widget infoChat;

  if (chat != null) {
    infoChat = ListAvatarText(
      assest: chat.image,
      title: chat.name,
      subTitle: 'Active ${chat.isActive ? '' : chat.time}',
      padding: const EdgeInsets.only(left: 5),
      isActive: chat.isActive,
    );
  } else {
    infoChat = const SizedBox.shrink();
  }

  return AppBar(
    toolbarHeight: ThemeConst.appbarHeight,
    leading: const SizedBox.shrink(),
    actions: [
      SizedBox(
        width: size.width,
        child: Row(
          children: [
            ButtonIconText(
              onPress: () => Navigator.popUntil(
                  context, ModalRoute.withName(ThemeRoute.chats)),
              iconData: Icons.arrow_back_ios,
              radius: 100,
              padding: const EdgeInsets.only(left: 10),
              iconSize: iconFontSize,
              iconColor: Colors.white,
              height: sizeIcon.width,
              width: sizeIcon.height,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Expanded(child: infoChat),
            ButtonIconText(
              onPress: () {
                Navigator.pushNamed(context, ThemeRoute.conversation,
                    arguments: {"chat": chat});
              },
              iconData: Icons.phone,
              radius: 100,
              padding: const EdgeInsets.all(0),
              iconSize: iconFontSize,
              iconColor: Colors.white,
              height: sizeIcon.width,
              width: sizeIcon.height,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            ButtonIconText(
              onPress: () {
                Navigator.pushNamed(context, ThemeRoute.conversation,
                    arguments: {"chat": chat});
              },
              iconData: Icons.videocam,
              radius: 100,
              padding: const EdgeInsets.all(0),
              iconSize: iconFontSize,
              iconColor: Colors.white,
              height: sizeIcon.width,
              width: sizeIcon.height,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ],
        ),
      ),
    ],
  );
}
