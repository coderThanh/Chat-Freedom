import 'package:chat_light_dark/views/widgets/button_icon_text_widget.dart';
import 'package:flutter/material.dart';

import '../../models/chat_message.dart';

class BoxMessageDetailContext extends StatelessWidget {
  const BoxMessageDetailContext({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    EdgeInsets padding = const EdgeInsets.all(0);
    Widget content = const SizedBox.shrink();

    switch (chatMessage.type) {
      case ChatMessageType.image:
        content = Image.asset(
          'assets/images/Video Place Here.png',
          width: size.width * 0.6,
        );
        break;
      case ChatMessageType.video:
        content = SizedBox(
          width: size.width * 0.6,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/Video Place Here.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                ButtonIconText(
                  onPress: () {},
                  iconData: Icons.play_arrow,
                  background: Theme.of(context).primaryColor,
                  width: 40,
                  height: 40,
                  iconSize: 24,
                  padding: const EdgeInsets.all(0),
                  iconColor: Colors.white,
                  mainAxisAlignment: MainAxisAlignment.center,
                  radius: 100,
                ),
              ],
            ),
          ),
        );
        break;
      case ChatMessageType.audio:
        padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 12);
        content = SizedBox(
          width: size.width * 0.45,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerLeft,
                    children: [
                      ButtonIconText(
                        onPress: () {},
                        iconData: Icons.play_arrow,
                        width: 34,
                        height: 34,
                        iconSize: 24,
                        padding: const EdgeInsets.all(0),
                        mainAxisAlignment: MainAxisAlignment.center,
                        background: Theme.of(context).splashColor,
                        radius: 100,
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: size.width * 0.45 - 50,
                          height: 2,
                          color: Theme.of(context).splashColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '0:37',
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        );
        break;
      default:
        padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 10);
        content = Text(
          chatMessage.text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: chatMessage.isSender
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyMedium?.color,
              ),
        );
    }

    return Opacity(
      opacity: chatMessage.status == ChatMessageStatus.notSent ? 0.4 : 1,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: chatMessage.isSender
              ? Theme.of(context).primaryColor
              : Theme.of(context).splashColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        constraints: BoxConstraints(maxWidth: size.width * 0.75),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: content,
      ),
    );
  }
}
