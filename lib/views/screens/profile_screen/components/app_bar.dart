import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/button_icon_text_widget.dart';

AppBar appBarProfileScreen({required BuildContext context}) {
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
      'Profiles',
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
              onPress: () =>
                  Navigator.pushNamed(context, ThemeRoute.profileEdit),
              iconData: Icons.settings,
              iconColor: Colors.white,
              iconSize: iconSize * 0.72,
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
