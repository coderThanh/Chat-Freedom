import 'package:chat_light_dark/views/widgets/check_condition_widget.dart';
import 'package:flutter/material.dart';

import '../../models/chat.dart';
import '../../models/theme_route.dart';

class ImageBoxChatSimgle extends StatelessWidget {
  const ImageBoxChatSimgle({
    Key? key,
    required this.chat,
    this.reverse = false,
    this.isVertical = true,
    this.sizeImage = 70,
    this.height,
    this.width,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine = 1,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  final Chat chat;
  final bool reverse;
  final bool isVertical;
  final double sizeImage;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int maxLine;
  final TextAlign textAlign;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final Widget imageWidget = SizedBox(
      width: sizeImage,
      height: sizeImage,
      child: Image.asset(chat.image),
    );

    final Widget textWidget = Text(
      chat.name,
      maxLines: maxLine,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            overflow: TextOverflow.ellipsis,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
      textAlign: textAlign,
    );

    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(
        context,
        ThemeRoute.chatMessage,
        arguments: <String, dynamic>{
          'chat': chat,
        },
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: CheckCondition(
          exception: isVertical,
          ifTrue: Column(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: !reverse
                ? [
                    imageWidget,
                    const SizedBox(height: 7),
                    textWidget,
                  ]
                : [
                    textWidget,
                    const SizedBox(height: 10),
                    imageWidget,
                  ],
          ),
          ifFalse: Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: !reverse
                ? [
                    imageWidget,
                    const SizedBox(width: 10),
                    textWidget,
                  ]
                : [
                    textWidget,
                    const SizedBox(width: 10),
                    imageWidget,
                  ],
          ),
        ),
      ),
    );
  }
}
