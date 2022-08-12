import 'package:chat_light_dark/views/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/theme_color.dart';
import '../../../../models/theme_const.dart';
import '../../../../models/theme_icon.dart';
import '../../../widgets/button_color_widget.dart';
import '../../signin/sigin_screen.dart';

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
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SigninScreen()));
              },
              text: 'Sign in',
            ),
            SizedBox(height: ThemeConst.padding * 1.2),
            ButtonColor(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()));
              },
              text: 'Sign up',
              background: ThemeColor.secondary,
            ),
            SizedBox(height: ThemeConst.padding * 2),
            GestureDetector(
              child: Text(
                'Skip and visit',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
