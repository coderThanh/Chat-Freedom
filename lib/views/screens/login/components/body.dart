import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/theme_color.dart';
import '../../../../models/theme_const.dart';
import '../../../../models/theme_icon.dart';
import '../../../widgets/button_color.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // Check theme mode
    final Brightness brightness = Theme.of(context).brightness;
    final bool isThemeLight = brightness == Brightness.light;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(ThemeConst.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              isThemeLight ? ThemeIcon.logoLight : ThemeIcon.logoDark,
              width: size.width * 0.35,
              height: size.width * 0.35,
            ),
            SizedBox(height: size.height * 0.15),
            ButtonColor(
              onPress: () {},
              text: 'Sign in',
            ),
            SizedBox(height: ThemeConst.padding * 1.2),
            ButtonColor(
              onPress: () {},
              text: 'Sign in',
              background: ThemeColor.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
