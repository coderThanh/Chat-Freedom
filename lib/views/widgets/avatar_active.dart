import 'package:flutter/material.dart';

import '../../models/theme_color.dart';
import 'check_condition_widget.dart';

class AvatarActive extends StatelessWidget {
  const AvatarActive({
    Key? key,
    required this.image,
    this.imageSize = 50,
    this.radius = 100,
    this.isActive = false,
  }) : super(key: key);

  final String image;
  final double imageSize;
  final double radius;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          image,
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
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
