import 'package:flutter/material.dart';

import '../../models/chat.dart';
import '../../models/theme_color.dart';
import '../../models/theme_const.dart';
import 'check_condition_widget.dart';

class LabelAvatar extends StatelessWidget {
  const LabelAvatar({
    Key? key,
    required this.chat,
    this.padding,
    this.imageSize = 45,
    this.textColor,
    this.backgroundColor = Colors.transparent,
    this.radius = 5,
    this.onPress,
  }) : super(key: key);

  final Chat chat;
  final EdgeInsets? padding;
  final double imageSize;
  final double radius;
  final Color? textColor;
  final Color backgroundColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    chat.image,
                    fit: BoxFit.cover,
                    width: imageSize,
                    height: imageSize,
                  ),
                  CheckCondition(
                    exception: chat.isActive,
                    ifTrue: Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: ThemeColor.primary,
                          border: Border.all(
                            color: Theme.of(context).backgroundColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  chat.name,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: textColor ?? Colors.white,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
                Opacity(
                  opacity: ThemeConst.textOpacity,
                  child: Text(
                    'Active ${chat.isActive ? '' : chat.time}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: textColor ?? Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
