import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Forgot Password',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: ThemeConst.padding * 0.5,
        ),
        const Text(
          'Interger quis dictum tellus, a auctoriorem. Crass in biandit leo suspendiss',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
