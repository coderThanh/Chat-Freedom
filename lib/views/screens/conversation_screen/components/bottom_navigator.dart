import 'package:flutter/material.dart';

import '../../../../models/theme_color.dart';
import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';

class BottomBarConverSationScreen extends StatelessWidget {
  const BottomBarConverSationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double buttonWidth = 50;
    const double iconSize = 24;

    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonIconText(
              onPress: () {},
              iconData: Icons.volume_up,
              iconColor: Colors.white,
              iconSize: iconSize,
              background: Colors.white12,
              radius: 100,
              mainAxisAlignment: MainAxisAlignment.center,
              width: buttonWidth,
              height: buttonWidth,
              padding: EdgeInsets.zero,
            ),
            SizedBox(width: ThemeConst.padding),
            ButtonIconText(
              onPress: () {},
              iconData: Icons.mic,
              iconColor: Colors.white,
              iconSize: iconSize,
              background: Colors.white12,
              radius: 100,
              mainAxisAlignment: MainAxisAlignment.center,
              width: buttonWidth,
              height: buttonWidth,
              padding: EdgeInsets.zero,
            ),
            SizedBox(width: ThemeConst.padding),
            ButtonIconText(
              onPress: () {},
              iconData: Icons.videocam_off,
              iconColor: Colors.white,
              iconSize: iconSize,
              background: Colors.white12,
              radius: 100,
              mainAxisAlignment: MainAxisAlignment.center,
              width: buttonWidth,
              height: buttonWidth,
              padding: EdgeInsets.zero,
            ),
            SizedBox(width: ThemeConst.padding),
            ButtonIconText(
              onPress: () => Navigator.pop(context),
              iconData: Icons.call_end,
              iconColor: Colors.white,
              iconSize: iconSize,
              background: ThemeColor.error,
              radius: 100,
              mainAxisAlignment: MainAxisAlignment.center,
              width: buttonWidth,
              height: buttonWidth,
              padding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
