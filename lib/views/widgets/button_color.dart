import 'package:chat_light_dark/views/widgets/check_condition_widget.dart';
import 'package:flutter/material.dart';

import '../../models/theme_color.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({
    Key? key,
    required this.onPress,
    required this.text,
    this.iconData,
    this.background,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.isIconRight = true,
    this.iconSize = 24,
    this.radius = 100,
  }) : super(key: key);

  final VoidCallback onPress;
  final String text;
  final IconData? iconData;
  final Color? background;
  final Color? iconColor;
  final double? iconSize;
  final Color? textColor;
  final bool isIconRight;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: Theme.of(context).textButtonTheme.style?.copyWith(
            backgroundColor:
                MaterialStateProperty.all(background ?? ThemeColor.primary),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)))),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 13, horizontal: 15)),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckCondition(
            exception: !isIconRight && iconData != null,
            ifTrue: Icon(
              iconData,
              size: iconSize,
              color: iconColor,
            ),
          ),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: textColor),
          ),
          CheckCondition(
            exception: isIconRight && iconData != null,
            ifTrue: Icon(
              iconData,
              size: iconSize,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
