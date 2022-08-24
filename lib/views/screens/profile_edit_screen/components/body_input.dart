import 'package:flutter/material.dart';

import '../../../../models/theme_const.dart';
import '../../../widgets/input_color_widget.dart';

class BodyProfileEditeInPut extends StatelessWidget {
  const BodyProfileEditeInPut({
    Key? key,
    this.value = '',
    required this.label,
    this.padding,
    this.hintText = '',
    this.isPassword = false,
  }) : super(key: key);

  final String value;
  final String label;
  final EdgeInsets? padding;
  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController =
        TextEditingController(text: value);
    textEditingController.selection =
        TextSelection.collapsed(offset: textEditingController.text.length);

    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: ThemeConst.padding,
            vertical: ThemeConst.padding * 0.5,
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          Expanded(
            flex: 3,
            child: Opacity(
              opacity: ThemeConst.textOpacity,
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            flex: 6,
            child: InputColor(
              controller: textEditingController,
              hintText: hintText,
              isPassword: isPassword,
            ),
          ),
        ],
      ),
    );
  }
}
