import 'package:flutter/material.dart';

import 'check_condition_widget.dart';

class InputColor extends StatefulWidget {
  const InputColor({
    Key? key,
    this.controller,
    this.radius = 100,
    this.backgroundColor,
    this.color,
    this.onChanged,
    this.onSubmitted,
    this.hintText,
    this.maxLength,
    this.isPassword = false,
    this.textInputType,
    this.height,
    this.padding,
    this.textSize = 16,
    this.iconSize = 20,
    this.iconColor,
    this.iconData,
    this.textInputAction,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final double radius;
  final Color? backgroundColor;
  final int? maxLength;
  final TextInputType? textInputType;
  final bool isPassword;
  final EdgeInsets? padding;
  final double? height;
  final String? hintText;
  final double textSize;
  final Color? color;
  final IconData? iconData;
  final Color? iconColor;
  final double iconSize;
  final TextInputAction? textInputAction;

  @override
  State<InputColor> createState() => _InputColorState();
}

class _InputColorState extends State<InputColor> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Theme.of(context).splashColor,
        borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
      ),
      height: widget.height,
      alignment: Alignment.center,
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        maxLength: widget.maxLength,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: widget.textSize,
              color:
                  widget.color ?? Theme.of(context).textTheme.bodyMedium?.color,
            ),
        obscureText: obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hintText,
          counterText: '',
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: widget.textSize,
                color: widget.color?.withOpacity(0.5) ??
                    Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.color
                        ?.withOpacity(0.5),
              ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () => setState(() {
                    obscureText = !obscureText;
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      obscureText ? Icons.remove_red_eye : Icons.visibility_off,
                      size: widget.iconSize,
                      color: widget.iconColor ??
                          Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.color
                              ?.withOpacity(0.5),
                    ),
                  ),
                )
              : null,
          suffixIconConstraints: const BoxConstraints.tightFor(),
          prefixIcon: CheckCondition(
            exception: widget.iconData != null,
            ifTrue: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                widget.iconData,
                size: widget.iconSize,
                color: widget.iconColor ??
                    Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.color
                        ?.withOpacity(0.5),
              ),
            ),
          ),
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
        ),
      ),
    );
  }
}
