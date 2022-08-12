import 'package:flutter/material.dart';

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
  }) : super(key: key);

  final TextEditingController? controller;
  final double radius;
  final Color? backgroundColor;
  final Color? color;
  final String? hintText;
  final int? maxLength;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool isPassword;
  final TextInputType? textInputType;
  final double? height;

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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              fontSize: 16,
              color:
                  widget.color ?? Theme.of(context).textTheme.bodyMedium?.color,
            ),
        obscureText: obscureText,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hintText,
          counterText: '',
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 16,
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
                      size: 20,
                      color: widget.color ??
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
          suffixIconColor: widget.color ?? Colors.red,
        ),
      ),
    );
  }
}
