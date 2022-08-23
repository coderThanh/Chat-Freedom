import 'package:flutter/material.dart';

import '../../models/theme_const.dart';
import '../../models/theme_route.dart';
import 'button_icon_text_widget.dart';

class BottomNavigationMainTheme extends StatelessWidget {
  const BottomNavigationMainTheme({
    Key? key,
    this.current = 0,
  }) : super(key: key);

  final int current;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listMenuItem = [
      {
        'text': 'Chats',
        'iconData': Icons.chat,
        'onPress': () =>
            Navigator.popUntil(context, ModalRoute.withName(ThemeRoute.chats)),
      },
      {
        'text': 'People',
        'iconData': Icons.people,
        'onPress': () {
          if (current != 1) {
            Navigator.pushNamedAndRemoveUntil(context, ThemeRoute.people,
                ModalRoute.withName(ThemeRoute.chats));
          }
        },
      },
      {
        'text': 'Calls',
        'iconData': Icons.call,
        'onPress': () {
          if (current != 2) {
            Navigator.pushNamedAndRemoveUntil(context, ThemeRoute.calls,
                ModalRoute.withName(ThemeRoute.chats));
          }
        },
      },
      {
        'text': 'Profile',
        'iconData': Icons.manage_accounts,
        'onPress': () {
          if (current != 3) {
            Navigator.pushNamedAndRemoveUntil(context, ThemeRoute.profile,
                ModalRoute.withName(ThemeRoute.chats));
          }
        },
      },
    ];

    return Container(
      padding: EdgeInsets.only(
        top: ThemeConst.padding * 0.25,
        bottom: ThemeConst.padding,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 10,
          )
        ],
      ),
      height: 80,
      child: Row(
        children: List.generate(
          listMenuItem.length,
          (index) => Expanded(
            child: Opacity(
              opacity: (current == index) ? 1 : 0.5,
              child: ButtonIconText(
                isHorizontal: false,
                onPress: listMenuItem[index]['onPress'],
                iconData: listMenuItem[index]['iconData'],
                text: listMenuItem[index]['text'],
                textSize: 13,
                textColor: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.color
                    ?.withOpacity(ThemeConst.textOpacity),
                iconColor:
                    (current == index) ? Theme.of(context).primaryColor : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
