import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';
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
          InputColor(
            hintText: 'Phone',
            maxLength: 15,
            height: ThemeConst.inputHeight,
            textInputType: TextInputType.number,
          ),
          SizedBox(
            height: ThemeConst.padding,
          ),
          InputColor(
            hintText: 'Password',
            isPassword: true,
            maxLength: 100,
            height: ThemeConst.inputHeight,
          ),
          SizedBox(
            height: ThemeConst.padding,
          ),
          ButtonIconText(
            onPress: () {},
            text: 'Sigin in',
            height: ThemeConst.inputHeight,
            background: Theme.of(context).primaryColor,
            textColor: Colors.white,
            textSize: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            radius: 100,
          ),
        ],
      ),
    );
  }
}
