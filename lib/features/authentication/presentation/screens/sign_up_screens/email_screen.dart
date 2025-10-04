import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_elevated_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter your Email',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: width * 0.04),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.02,
          horizontal: width * 0.08,
        ),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextField(
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: height * 0.03),
                  CustomElevatedButton(
                    width: width * 0.4,
                    height: height * 0.06,
                    text: 'Next',
                    backgroundColor: AppColors.lightGrey,
                    textColor: AppColors.Black,
                    onPressed: () {
                      Navigator.pushNamed(context, ScreenConst.passwordScreen);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
