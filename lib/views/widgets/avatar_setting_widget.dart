import 'package:flutter/material.dart';

import 'button_icon_text_widget.dart';

class AvatarSetting extends StatelessWidget {
  const AvatarSetting({
    Key? key,
    required this.image,
    this.size = 120,
    this.onPress,
  }) : super(key: key);

  final String image;
  final double size;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  child: ButtonIconText(
                    onPress: onPress ?? () {},
                    iconData: Icons.add,
                    iconColor: Colors.white,
                    background: Theme.of(context).primaryColor,
                    width: 28,
                    height: 28,
                    radius: 100,
                    padding: EdgeInsets.zero,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
