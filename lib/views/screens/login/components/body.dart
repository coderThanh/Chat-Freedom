import 'package:flutter/material.dart';

import '../../../../models/theme_color.dart';
import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/button_icon_text_widget.dart';
import '../../../widgets/logo_welcome.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: ThemeConst.padding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LogoWelcome(),
            ButtonIconText(
              onPress: () {
                Navigator.pushNamed(context, ThemeRoute.signin);
              },
              text: 'Sign in',
              background: Theme.of(context).primaryColor,
              height: ThemeConst.inputHeight,
              textColor: Colors.white,
              textSize: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              radius: 100,
            ),
            SizedBox(height: ThemeConst.padding * 1.2),
            ButtonIconText(
              onPress: () {
                Navigator.pushNamed(context, ThemeRoute.signup);
              },
              text: 'Sign up',
              background: ThemeColor.secondary,
              height: ThemeConst.inputHeight,
              textColor: Colors.white,
              textSize: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              radius: 100,
            ),
            SizedBox(height: ThemeConst.padding * 3),
            GestureDetector(
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, ThemeRoute.chats, (route) => false),
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
