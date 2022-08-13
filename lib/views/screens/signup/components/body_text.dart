import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';

class BodyTextSignup extends StatelessWidget {
  const BodyTextSignup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: ThemeConst.padding),
        Text.rich(
          TextSpan(
            text: 'Already have an accout? ',
            children: [
              TextSpan(
                text: 'Sign in',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Navigator.pushReplacementNamed(
                      context, ThemeRoute.signin),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: ThemeConst.padding * 1.5),
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
