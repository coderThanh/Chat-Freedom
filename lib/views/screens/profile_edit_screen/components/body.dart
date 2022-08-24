import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/theme_const.dart';
import '../../../widgets/avatar_setting_widget.dart';
import '../../../widgets/button_icon_text_widget.dart';
import 'body_input.dart';

class BodyProfileEdit extends StatelessWidget {
  const BodyProfileEdit({
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
          top: ThemeConst.padding,
          bottom: ThemeConst.padding * 2,
        ),
        child: Column(
          children: [
            AvatarSetting(image: demoChatsData[0].image),
            SizedBox(height: ThemeConst.padding * 1.5),
            BodyProfileEditeInPut(label: 'Name', value: demoChatsData[0].name),
            const BodyProfileEditeInPut(
                label: 'Email', value: 'codedemo@gmail.com'),
            const BodyProfileEditeInPut(
                label: 'Phone', value: '(254) 001 123 47'),
            const BodyProfileEditeInPut(
                label: 'Address', value: 'New York, NYC'),
            const BodyProfileEditeInPut(
              label: 'Old Password',
              value: '12345678',
              isPassword: true,
            ),
            const BodyProfileEditeInPut(
              label: 'New Password',
              hintText: 'New password',
              isPassword: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ThemeConst.padding,
                vertical: ThemeConst.padding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonIconText(
                    onPress: () {},
                    text: 'Cancel',
                    radius: 100,
                    background: Theme.of(context).splashColor,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 8,
                      bottom: 10,
                    ),
                  ),
                  const SizedBox(width: 14),
                  ButtonIconText(
                    onPress: () {},
                    text: 'Save update',
                    radius: 100,
                    background: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 8,
                      bottom: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
