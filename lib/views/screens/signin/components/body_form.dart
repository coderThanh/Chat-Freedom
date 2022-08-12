import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_color_widget.dart';
import '../../../widgets/input_color_widget.dart';

class BodyForm extends StatelessWidget {
  const BodyForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ThemeConst.padding * 2,
        bottom: ThemeConst.padding * 1.5,
      ),
      child: Column(
        children: [
          const InputColor(
            hintText: 'Phone',
            maxLength: 15,
            height: 50,
            textInputType: TextInputType.number,
          ),
          SizedBox(
            height: ThemeConst.padding,
          ),
          const InputColor(
            hintText: 'Password',
            isPassword: true,
            maxLength: 100,
            height: 50,
          ),
          SizedBox(
            height: ThemeConst.padding,
          ),
          ButtonColor(
            onPress: () {},
            text: 'Sigin in',
            height: 50,
          ),
        ],
      ),
    );
  }
}
