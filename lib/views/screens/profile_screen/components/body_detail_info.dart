import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';

class BodyProfileInfo extends StatelessWidget {
  const BodyProfileInfo({
    Key? key,
    required this.title,
    this.value = '',
    this.padding,
  }) : super(key: key);

  final String title;
  final String value;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: ThemeConst.padding * 0.8,
            vertical: ThemeConst.padding * 0.5,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Opacity(
            opacity: ThemeConst.textOpacity,
            child: Text(title),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
