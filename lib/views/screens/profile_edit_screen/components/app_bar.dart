import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';

AppBar appBarProfileEdit({required BuildContext context}) {
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
            iconSize: 34,
            padding: EdgeInsets.zero,
            mainAxisAlignment: MainAxisAlignment.center,
            radius: 100,
            width: 40,
            height: 40,
          ),
        )
      ],
    ),
    title: Text(
      'Edit Profiles',
      style:
          Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
    ),
  );
}
