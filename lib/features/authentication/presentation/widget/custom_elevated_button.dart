import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? width;
  final double? height;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.fontSize,
    this.fontWeight,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 366,
      height: height ?? 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.darkGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 21),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
