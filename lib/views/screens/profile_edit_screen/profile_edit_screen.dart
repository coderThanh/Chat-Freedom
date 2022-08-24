import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarProfileEdit(context: context),
      body: const BodyProfileEdit(),
    );
  }
}
