import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/list_avatar_text_widget.dart';

class BodyPeopleScreen extends StatelessWidget {
  const BodyPeopleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(
        bottom: ThemeConst.padding * 2,
      ),
      itemCount: demoChatsData.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              ThemeRoute.chatMessage,
              arguments: {"chat": demoChatsData[index]},
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ThemeConst.padding,
              vertical: ThemeConst.padding * 0.5,
            ),
            child: ListAvatarText(
              assest: demoChatsData[index].image,
              title: demoChatsData[index].name,
              subTitle: '(239) 555-0108',
              isActive: demoChatsData[index].isActive,
              imageSize: 50,
              styleTitle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
              styleSubTitle: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        );
      },
    );
  }
}
