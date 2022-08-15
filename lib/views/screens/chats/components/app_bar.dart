import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';

AppBar appBarChats(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      'Chats',
      style:
          Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
    ),
    leading: Container(
      margin: EdgeInsets.only(left: ThemeConst.padding),
      width: 24,
      height: 24,
      child: IconButton(
        onPressed: () {},
        padding: const EdgeInsets.all(0),
        splashRadius: 22,
        icon: const Icon(
          Icons.open_in_new,
        ),
      ),
    ),
    actions: [
      Container(
        margin: EdgeInsets.only(right: ThemeConst.padding),
        width: 24,
        height: 24,
        child: IconButton(
          splashRadius: 22,
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: const Icon(
            Icons.search,
          ),
        ),
      ),
    ],
  );
}
