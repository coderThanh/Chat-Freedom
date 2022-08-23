import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/theme_const.dart';
import '../../../widgets/avatar_setting_widget.dart';
import '../../../widgets/button_icon_text_widget.dart';
import 'body_detail_info.dart';

class BodyProFile extends StatelessWidget {
  const BodyProFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 0,
          right: 0,
          top: ThemeConst.padding,
          bottom: ThemeConst.padding * 2,
        ),
        child: Column(
          children: [
            AvatarSetting(
              image: demoChatsData[0].image,
            ),
            // Name
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 30.0,
                left: ThemeConst.padding * 0.8,
                right: ThemeConst.padding * 0.8,
              ),
              child: Text(
                demoChatsData[0].name,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ),
            const BodyProfileInfo(
              title: 'User Id',
              value: '@annete.me',
            ),
            const BodyProfileInfo(
              title: 'Location',
              value: 'New York, NYC',
            ),
            const BodyProfileInfo(
              title: 'Phone',
              value: '(254) 00 112  34',
            ),
            const BodyProfileInfo(
              title: 'Email',
              value: 'demo@agmail.com',
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                left: ThemeConst.padding * 0.8,
                right: ThemeConst.padding * 0.8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonIconText(
                    onPress: () {},
                    text: 'Edit Profile',
                    textColor: Colors.white,
                    background: Theme.of(context).primaryColor,
                    radius: 100,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
