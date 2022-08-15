import 'package:flutter/material.dart';

import 'check_condition_widget.dart';

class ButtonIconText extends StatelessWidget {
  const ButtonIconText({
    Key? key,
    required this.onPress,
    this.text,
    this.iconData,
    this.background = Colors.transparent,
    this.iconColor,
    this.iconSize = 22,
    this.textColor,
    this.iconReverse = false,
    this.radius = 10,
    this.height = 0,
    this.padding,
    this.textSize,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.isHorizontal = true,
  }) : super(key: key);

  final VoidCallback onPress;
  final String? text;
  final double? textSize;
  final Color? textColor;
  final IconData? iconData;
  final Color? iconColor;
  final double iconSize;
  final bool iconReverse;
  final bool isHorizontal;
  final Color? background;
  final double radius;
  final double height;
  final EdgeInsets? padding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final Icon iconWidget = Icon(
      iconData,
      size: iconSize,
      color: iconColor ?? Theme.of(context).textTheme.bodyMedium?.color,
    );

    final Text textWidget = Text(
      text.toString(),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: textSize,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
    );

    return TextButton(
      onPressed: onPress,
      style: Theme.of(context).textButtonTheme.style?.copyWith(
            backgroundColor: MaterialStateProperty.all(background),
            padding: MaterialStateProperty.all(padding),
            minimumSize: MaterialStateProperty.all(Size(0, height)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
            ),
          ),
      child: CheckCondition(
        exception: isHorizontal,
        ifTrue: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            CheckCondition(
              exception: !iconReverse && iconData != null,
              ifTrue: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: iconWidget,
              ),
            ),
            CheckCondition(
              exception: text != null,
              ifTrue: textWidget,
            ),
            CheckCondition(
              exception: iconReverse && iconData != null,
              ifTrue: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: iconWidget,
              ),
            ),
          ],
        ),
        ifFalse: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            CheckCondition(
              exception: !iconReverse && iconData != null,
              ifTrue: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: iconWidget,
              ),
            ),
            CheckCondition(
              exception: text != null,
              ifTrue: textWidget,
            ),
            CheckCondition(
              exception: iconReverse && iconData != null,
              ifTrue: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: iconWidget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
