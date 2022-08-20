import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class SearchChatScreen extends StatelessWidget {
  const SearchChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: appBarSearchScreen(context),
        body: const BodySearchChatScreen(),
      ),
    );
  }
}
