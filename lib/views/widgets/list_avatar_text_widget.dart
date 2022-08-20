import 'package:flutter/material.dart';

import '../../models/theme_color.dart';
import '../../models/theme_const.dart';
import 'check_condition_widget.dart';

class ListAvatarText extends StatelessWidget {
  const ListAvatarText({
    Key? key,
    this.padding,
    this.imageSize = 45,
    this.textColor,
    this.backgroundColor = Colors.transparent,
    this.radius = 5,
    this.onPress,
    this.isActive = false,
    required this.assest,
    required this.title,
    this.subTitle,
    this.styleTitle,
    this.styleSubTitle,
  }) : super(key: key);

  final EdgeInsets? padding;
  final double imageSize;
  final double radius;
  final Color? textColor;
  final Color backgroundColor;
  final VoidCallback? onPress;
  final bool isActive;
  final String assest;
  final String title;
  final String? subTitle;
  final TextStyle? styleTitle;
  final TextStyle? styleSubTitle;

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
                    assest,
                    fit: BoxFit.cover,
                    width: imageSize,
                    height: imageSize,
                  ),
                  CheckCondition(
                    exception: isActive,
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
                  title,
                  maxLines: 1,
                  style: styleTitle ??
                      Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: textColor ?? Colors.white,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis,
                          ),
                ),
                CheckCondition(
                  exception: subTitle != null,
                  ifTrue: Opacity(
                    opacity: ThemeConst.textOpacity,
                    child: Text(
                      subTitle.toString(),
                      style: styleSubTitle ??
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: textColor ?? Colors.white,
                              ),
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
