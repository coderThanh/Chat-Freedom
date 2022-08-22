import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';

AppBar appBarCallsScreen(BuildContext context) {
  const double iconSize = 34;
  const double iconWidth = 40;

  return AppBar(
    toolbarHeight: ThemeConst.appbarHeight,
    leading: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: ThemeConst.padding * 0.5),
          child: ButtonIconText(
            onPress: () => Navigator.pop(context),
            iconData: Icons.navigate_before,
            iconColor: Colors.white,
            iconSize: iconSize,
            radius: 100,
            width: iconWidth,
            height: iconWidth,
            padding: EdgeInsets.zero,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ],
    ),
    title: Text(
      'Calls',
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.white,
          ),
    ),
    actions: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: ThemeConst.padding * 0.5),
            child: ButtonIconText(
              onPress: () {},
              iconData: Icons.search,
              iconColor: Colors.white,
              iconSize: iconSize * 0.75,
              radius: 100,
              width: iconWidth,
              height: iconWidth,
              padding: EdgeInsets.zero,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    ],
  );
}
