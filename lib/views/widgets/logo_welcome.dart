import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/theme_icon.dart';

class LogoWelcome extends StatelessWidget {
  const LogoWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Brightness brightness = Theme.of(context).brightness;
    final bool isThemeLight = brightness == Brightness.light;

    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.1,
        bottom: size.height * 0.08,
      ),
      child: SvgPicture.asset(
        isThemeLight ? ThemeIcon.logoLight : ThemeIcon.logoDark,
        width: size.width * 0.35,
        height: size.width * 0.35,
      ),
    );
  }
}
