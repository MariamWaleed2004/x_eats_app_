import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_elevated_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create your password',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextField(label: 'Password', obscureText: true),
                  SizedBox(height: 17),
                  CustomTextField(label: 'Confirm Password', obscureText: true),
                  SizedBox(height: 25),
                  CustomElevatedButton(
                    width: 154,
                    height: 46,
                    text: 'Next',
                    backgroundColor: AppColors.lightGrey,
                    textColor: AppColors.Black,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        ScreenConst.phoneNumberScreen,
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '. Use at least one uppercase letter, one number',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '. Must be 8-16 characters, no spaces',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
