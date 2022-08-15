import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';
import '../../../widgets/input_color_widget.dart';

class BodyFormChangePass extends StatelessWidget {
  const BodyFormChangePass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ThemeConst.padding * 2,
        ),
        InputColor(
          maxLength: 100,
          height: ThemeConst.inputHeight,
          hintText: 'New Password',
          isPassword: true,
        ),
        SizedBox(
          height: ThemeConst.padding,
        ),
        InputColor(
          maxLength: 100,
          height: ThemeConst.inputHeight,
          hintText: 'Confirm Password',
          isPassword: true,
        ),
        SizedBox(
          height: ThemeConst.padding,
        ),
        ButtonIconText(
          onPress: () {},
          text: 'Change Password',
          background: Theme.of(context).primaryColor,
          textColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          radius: 100,
          height: ThemeConst.inputHeight,
        ),
      ],
    );
  }
}
