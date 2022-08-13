import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPassWordScreen extends StatelessWidget {
  const ForgotPassWordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyForgotPassword(),
    );
  }
}
