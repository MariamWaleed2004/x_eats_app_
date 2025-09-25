import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_elevated_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter your phone number',
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
                  CustomTextField(
                    label: 'Phone Number',
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 25),
                  CustomElevatedButton(
                    width: 154,
                    height: 46,
                    text: 'Submit',
                    backgroundColor: AppColors.lightGrey,
                    textColor: AppColors.Black,
                    onPressed: () {
                      Navigator.pushNamed(context, ScreenConst.verifyScreen);
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
