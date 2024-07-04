import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.fontsize,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
  });
  final String text;
  final double? fontsize;
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w800,
              fontSize: fontsize),
        ),
      ),
    );
  }
}
