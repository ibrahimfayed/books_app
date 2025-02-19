import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textcolor,
    required this.text,
    this.fontsize,
    this.borderRadius,
  });

  final Color backgroundColor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final double? fontsize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: Styles.textstyle18.copyWith(
              color: textcolor,
              fontSize: fontsize,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
