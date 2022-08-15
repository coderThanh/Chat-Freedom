import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';

class TitleSearchBody extends StatelessWidget {
  const TitleSearchBody({
    Key? key,
    required this.text,
    this.padding,
  }) : super(key: key);

  final String text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.only(
            left: ThemeConst.padding,
            right: ThemeConst.padding,
            bottom: ThemeConst.padding * 0.8,
          ),
      child: Opacity(
        opacity: ThemeConst.textOpacity,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
