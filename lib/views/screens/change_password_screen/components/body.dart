import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/logo_welcome.dart';
import 'body_form.dart';

class BodyChangePassWord extends StatelessWidget {
  const BodyChangePassWord({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      padding: EdgeInsets.symmetric(horizontal: ThemeConst.padding),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: ThemeConst.padding * 3),
        child: Column(
          children: [
            const LogoWelcome(),
            Text(
              'Change Password',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const BodyFormChangePass(),
            Column(
              children: [
                SizedBox(height: ThemeConst.padding),
                Text.rich(
                  TextSpan(
                    text: 'Already have a account? ',
                    children: [
                      TextSpan(
                        text: 'Sign in',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.popUntil(context,
                                ModalRoute.withName(ThemeRoute.signin));
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: ThemeConst.padding * 3),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'Go back',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
