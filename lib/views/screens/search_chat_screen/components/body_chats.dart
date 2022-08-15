import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/theme_const.dart';
import '../../../widgets/image_box_chat_simple_widget.dart';
import 'body_title.dart';

class BodyChatOfSearchScreen extends StatelessWidget {
  const BodyChatOfSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: ThemeConst.padding * 2,
        top: ThemeConst.padding * 1.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleSearchBody(
            text: 'Recent search',
            padding: EdgeInsets.only(
              left: ThemeConst.padding,
              right: ThemeConst.padding,
              bottom: ThemeConst.padding * 0.5,
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: ListView.builder(
              itemCount: demoChatsData.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ImageBoxChatSimgle(
                    chat: demoChatsData[index],
                    width: 100,
                  ),
                );
              },
            ),
          ),
          TitleSearchBody(
            text: 'Suggested',
            padding: EdgeInsets.only(
              left: ThemeConst.padding,
              right: ThemeConst.padding,
              bottom: ThemeConst.padding * 0.5,
              top: ThemeConst.padding * 2,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: demoChatsData.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ThemeConst.padding,
                  vertical: ThemeConst.padding * 0.5,
                ),
                child: ImageBoxChatSimgle(
                  chat: demoChatsData[index],
                  isVertical: false,
                  sizeImage: 50,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  mainAxisAlignment: MainAxisAlignment.start,
                  textAlign: TextAlign.left,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
