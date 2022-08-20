import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';

AppBar appBarPeopleScreen(BuildContext context) {
  const double iconSize = 34;
  const double iconWidth = 42;

  return AppBar(
    title: Text(
      'People',
      style:
          Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
    ),
    leading: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: ThemeConst.padding * 0.5),
          child: ButtonIconText(
            onPress: () => Navigator.pop(context),
            padding: const EdgeInsets.all(0),
            iconData: Icons.navigate_before,
            iconSize: iconSize,
            radius: 100,
            width: iconWidth,
            height: iconWidth,
            mainAxisAlignment: MainAxisAlignment.center,
            iconColor: Colors.white,
          ),
        ),
      ],
    ),
    actions: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: ThemeConst.padding * 0.5),
            child: ButtonIconText(
              onPress: () => {},
              padding: const EdgeInsets.all(0),
              iconData: Icons.search,
              iconSize: 26,
              radius: 100,
              width: iconWidth,
              height: iconWidth,
              mainAxisAlignment: MainAxisAlignment.center,
              iconColor: Colors.white,
            ),
          ),
        ],
      ),
    ],
  );
}
