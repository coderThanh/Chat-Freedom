import 'package:flutter/material.dart';

import '../../../widgets/button_icon_text_widget.dart';

class FloatButtonChats extends StatelessWidget {
  const FloatButtonChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 20,
          ),
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 20,
          ),
        ],
      ),
      child: ButtonIconText(
        onPress: () {},
        iconData: Icons.person_add_alt_1,
        background: Theme.of(context).primaryColor,
        iconColor: Colors.white,
        iconSize: 24,
        radius: 100,
        mainAxisAlignment: MainAxisAlignment.center,
        isHorizontal: false,
      ),
    );
  }
}
