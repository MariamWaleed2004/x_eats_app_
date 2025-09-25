import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    final containerSize = width * 0.3;
    return Container(
      width: width * 0.3,
      height: width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(containerSize * 0.1),
        color: Colors.black,
      ),
      child: Center(
        child: Image.asset(
          "assets/logo/x.png",
          width: containerSize * 0.5,
          height: containerSize * 0.45,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
