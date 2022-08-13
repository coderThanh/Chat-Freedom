import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/button_color_widget.dart';
import '../../../widgets/input_color_widget.dart';

class BodyFormSignUp extends StatelessWidget {
  const BodyFormSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: ThemeConst.padding * 2),
        InputColor(
          hintText: 'Full Name',
          maxLength: 40,
          height: ThemeConst.inputHeight,
        ),
        SizedBox(height: ThemeConst.padding * 0.8),
        InputColor(
          hintText: 'Phone',
          maxLength: 20,
          textInputType: TextInputType.phone,
          height: ThemeConst.inputHeight,
        ),
        SizedBox(height: ThemeConst.padding * 0.8),
        InputColor(
          hintText: 'Password',
          maxLength: 40,
          height: ThemeConst.inputHeight,
          isPassword: true,
        ),
        SizedBox(height: ThemeConst.padding * 0.8),
        InputColor(
          hintText: 'Country',
          maxLength: 40,
          height: ThemeConst.inputHeight,
        ),
        SizedBox(height: ThemeConst.padding * 0.8),
        ButtonColor(
          onPress: () => Navigator.pushNamedAndRemoveUntil(
              context, ThemeRoute.chats, (route) => false),
          text: 'Sign up',
          height: ThemeConst.inputHeight,
        ),
      ],
    );
  }
}
