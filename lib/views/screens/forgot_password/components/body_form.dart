import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';

import '../../../widgets/button_icon_text_widget.dart';
import '../../../widgets/input_color_widget.dart';

class BodyFormForgotPassword extends StatelessWidget {
  const BodyFormForgotPassword({
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
          hintText: 'Phone',
          height: ThemeConst.inputHeight,
          textInputType: TextInputType.phone,
          maxLength: 20,
        ),
        SizedBox(
          height: ThemeConst.padding,
        ),
        ButtonIconText(
          onPress: () {
            Navigator.pushNamed(context, ThemeRoute.changPassword);
          },
          text: 'Next',
          background: Theme.of(context).primaryColor,
          textColor: Colors.white,
          textSize: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          radius: 100,
          width: double.infinity,
          height: ThemeConst.inputHeight,
        ),
        SizedBox(
          height: ThemeConst.padding * 3,
        ),
      ],
    );
  }
}
