import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;

  const CustomTextField({
    Key? key,
    this.label,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        cursorColor: AppColors.grey,
        decoration: InputDecoration(
          prefixIcon:
              prefixIcon != null
                  ? Icon(prefixIcon, color: AppColors.lightGrey)
                  : null,
          labelText: label ?? "",
          labelStyle: TextStyle(color: AppColors.lightGrey),
          floatingLabelStyle: TextStyle(color: AppColors.darkGreen),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGreen, width: 2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        ),
      ),
    );
  }
}
