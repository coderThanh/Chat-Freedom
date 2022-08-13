import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/logo_welcome.dart';
import 'body_form.dart';
import 'body_text.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({
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
        padding: EdgeInsets.only(bottom: ThemeConst.padding),
        child: Column(
          children: [
            const LogoWelcome(),
            Text(
              'Sign up',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const BodyFormSignUp(),
            const BodyTextSignup(),
          ],
        ),
      ),
    );
  }
}
