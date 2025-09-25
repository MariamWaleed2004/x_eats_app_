import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    final containerSize = width * 0.3;
    return Scaffold(
      body: Center(
        child: Container(
          width: width * 0.3,
          height: width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(containerSize * 0.1),
            color: Colors.black,
          ),
          child: Center(
            child: Image.asset(
              "assets/logo/x.png",
              width: width * 0.15,
              height: width * 0.135,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
