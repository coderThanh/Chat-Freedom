import 'package:chat_light_dark/models/theme_const.dart';
import 'package:chat_light_dark/views/widgets/button_text_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../signup/signup_screen.dart';

class BodyTextMore extends StatelessWidget {
  const BodyTextMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Text(
            'Forgot Password?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          ),
        ),
        SizedBox(height: ThemeConst.padding),
        Text.rich(
          TextSpan(
            text: 'Don\'t have an account? ',
            children: [
              TextSpan(
                text: 'Sign up',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
              ),
            ],
          ),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
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
    );
  }
}
