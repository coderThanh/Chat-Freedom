import 'package:flutter/material.dart';

import 'check_condition_widget.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.text,
    this.iconData,
    this.isIconRight = true,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final IconData? iconData;
  final bool isIconRight;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: Theme.of(context).textButtonTheme.style,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckCondition(
            exception: !isIconRight && iconData != null,
            ifTrue: Icon(
              iconData,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          CheckCondition(
            exception: isIconRight && iconData != null,
            ifTrue: Icon(
              iconData,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ],
      ),
    );
  }
}
