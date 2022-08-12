import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import 'body_form.dart';
import 'body_logo.dart';
import 'body_text_more.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ThemeConst.padding),
      width: double.infinity,
      height: size.height,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: ThemeConst.padding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const BodyLogo(),
            Text('Sign in', style: Theme.of(context).textTheme.titleMedium),
            const BodyForm(),
            const BodyTextMore(),
          ],
        ),
      ),
    );
  }
}
