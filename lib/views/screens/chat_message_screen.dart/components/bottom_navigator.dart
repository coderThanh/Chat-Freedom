import 'package:chat_light_dark/views/widgets/input_color_widget.dart';
import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';

class BottomNavigatorChatMessageDetail extends StatelessWidget {
  const BottomNavigatorChatMessageDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 28;

    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom * 1.02),
      child: BottomAppBar(
        color: Theme.of(context).backgroundColor,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.only(
            top: ThemeConst.padding * 0.4,
            left: ThemeConst.padding * 0.25,
            right: ThemeConst.padding * 0.25,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: ThemeConst.padding * 0.5),
                child: Opacity(
                  opacity: 0.4,
                  child: ButtonIconText(
                    onPress: () {},
                    iconData: Icons.photo_camera,
                    width: 40,
                    height: 40,
                    radius: 100,
                    iconSize: iconSize,
                    padding: const EdgeInsets.all(0),
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      right: 3, top: 3, bottom: 3, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.1)),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: InputColor(
                          padding: EdgeInsets.only(right: 5),
                          radius: 0,
                          height: 24,
                          backgroundColor: Colors.transparent,
                          hintText: 'Input context...',
                        ),
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: ButtonIconText(
                          onPress: () {},
                          iconData: Icons.attach_file,
                          width: 38,
                          height: 38,
                          radius: 100,
                          iconSize: iconSize * 0.85,
                          padding: const EdgeInsets.all(0),
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ButtonIconText(
                  onPress: () {},
                  iconData: Icons.send,
                  iconColor: Theme.of(context).primaryColor,
                  width: 40,
                  height: 40,
                  radius: 100,
                  iconSize: iconSize * 0.85,
                  padding: const EdgeInsets.all(0),
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
