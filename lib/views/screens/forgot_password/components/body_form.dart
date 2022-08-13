import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../../models/theme_route.dart';
import '../../../widgets/button_color_widget.dart';
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
        ButtonColor(
            onPress: () {
              Navigator.pushNamed(context, ThemeRoute.changPassword);
            },
            text: 'Next'),
        SizedBox(
          height: ThemeConst.padding * 3,
        ),
      ],
    );
  }
}
