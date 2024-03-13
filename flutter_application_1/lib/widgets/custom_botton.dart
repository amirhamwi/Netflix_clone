import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.borderWidth = 1,
    this.borderRadius = 0,
  });
  final Function onPressed;
  final String text;
  final TextStyle? textStyle;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                side: BorderSide(color: borderColor, width: borderWidth))),
        child: Text(text, style: textStyle),
      ),
    );
  }
}
