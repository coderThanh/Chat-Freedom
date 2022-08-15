import 'package:flutter/material.dart';

import '../../models/chat.dart';
import '../../models/theme_color.dart';
import '../../models/theme_const.dart';
import '../../models/theme_route.dart';
import 'check_condition_widget.dart';

class BoxChat extends StatelessWidget {
  const BoxChat({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ThemeRoute.chatMessage,
          arguments: <String, dynamic>{
            'chat': chat,
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ThemeConst.padding,
          vertical: ThemeConst.padding * 0.64,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: ThemeConst.padding * 0.8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    chat.image,
                    fit: BoxFit.cover,
                    width: 55,
                    height: 55,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w600,
                        ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 2),
                  Opacity(
                    opacity: ThemeConst.textOpacity,
                    child: Text(
                      chat.lastMessage,
                      textAlign: TextAlign.left,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ThemeConst.padding * 0.8),
              child: Opacity(
                opacity: ThemeConst.textOpacity,
                child: Text(
                  chat.time,
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
