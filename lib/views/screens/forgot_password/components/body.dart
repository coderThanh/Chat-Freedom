import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/logo_welcome.dart';
import 'body_form.dart';
import 'body_text.dart';

class BodyForgotPassword extends StatelessWidget {
  const BodyForgotPassword({
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
          padding: EdgeInsets.only(bottom: ThemeConst.padding * 2),
          child: Column(
            children: [
              const LogoWelcome(),
              const BodyText(),
              const BodyFormForgotPassword(),
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
          )),
    );
  }
}
