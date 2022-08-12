import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/button_text_widget.dart';
import '../../login/login_screen.dart';
import 'body_description.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Image.asset(
              'assets/images/welcome_image.png',
              width: double.infinity,
              height: size.height * 0.4,
            ),
            const Description(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonText(
                  text: 'Skip',
                  iconData: Icons.navigate_next_outlined,
                  onPress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: ThemeConst.padding * 2,
            ),
          ],
        ),
      ),
    );
  }
}
