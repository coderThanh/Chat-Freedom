import 'package:flutter/material.dart';

import '../../../../models/chat.dart';

class BodyConverSationScreen extends StatelessWidget {
  const BodyConverSationScreen({
    Key? key,
    this.chat,
  }) : super(key: key);

  final Chat? chat;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double avartarSize = 90;
    late Widget avartar;

    // Beacause i don't have image placeholder
    if (chat != null && chat?.image != null) {
      avartar = Image.asset(
        chat!.image,
        width: avartarSize,
        height: avartarSize,
      );
    } else {
      avartar = Container(
        width: avartarSize,
        height: avartarSize,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: size.height,
      color: Colors.black12,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/Video Place Here.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black87,
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              avartar,
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 2,
                ),
                child: Text(
                  chat?.name != null ? chat!.name : 'No name',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Text(
                'Rigning...',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
