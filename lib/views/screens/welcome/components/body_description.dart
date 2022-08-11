import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ThemeConst.padding,
        vertical: ThemeConst.padding * 3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome to our free dom messaging app',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: ThemeConst.padding),
          const Text(
            'Freedom talk any person of your mother language',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
