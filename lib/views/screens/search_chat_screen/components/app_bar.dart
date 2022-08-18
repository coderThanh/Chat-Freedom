import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_icon_text_widget.dart';
import '../../../widgets/input_color_widget.dart';

AppBar appBarSearchScreen(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  const double labelHeight = 40;

  return AppBar(
    leading: const SizedBox.shrink(),
    toolbarHeight: 40,
    elevation: 10,
    shadowColor: Colors.black38,
    actions: [
      Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: ThemeConst.padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InputColor(
                onSubmitted: (String text) {},
                padding: const EdgeInsets.symmetric(horizontal: 10),
                radius: 7,
                maxLength: 200,
                hintText: 'Search...',
                backgroundColor: Colors.white,
                iconData: Icons.search,
                textInputAction: TextInputAction.search,
                color: Colors.black87,
                iconColor: Colors.black45,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: ButtonIconText(
                onPress: () => Navigator.pop(context),
                text: 'Cancel',
                padding: const EdgeInsets.all(5),
                radius: 5,
                textColor: Colors.white,
                height: 38,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    ],
    bottom: TabBar(
      indicatorColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 3,
      splashBorderRadius: const BorderRadius.all(Radius.circular(6)),
      padding: const EdgeInsets.all(0),
      labelPadding: EdgeInsets.symmetric(horizontal: ThemeConst.padding * 0.8),
      labelStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
      tabs: const [
        Tab(
          text: 'Chats',
          height: labelHeight,
        ),
        Tab(
          text: 'Media',
          height: labelHeight,
        ),
        Tab(
          text: 'Links',
          height: labelHeight,
        ),
        Tab(
          text: 'Files',
          height: labelHeight,
        ),
      ],
    ),
  );
}
