import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_elevated_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          "Let's get to know you!",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 37),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What's your name?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 11),
                CustomTextField(),
                SizedBox(height: 11),
                Text(
                  'This appears on your spotify profile.',
                  style: TextStyle(fontSize: 8),
                ),
                SizedBox(height: 30),

                Divider(color: AppColors.lightGrey2, thickness: 1),
                Text(
                  'By tapping on "Next", you agree to the X eats Terms of Use.',
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  'Terms of Use',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.NeonGreen2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'To learn more about how Spotify collect, uses, shares and protects your personal data please read Spotify Privacy Policy.',
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  'Terms of Use',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.NeonGreen2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 59),
            child: CustomElevatedButton(
              text: "Next",
              onPressed: () {
                Navigator.pushNamed(context, ScreenConst.restaurantScreen);
              },
              width: 179,
              height: 42,
              textColor: AppColors.Black,
              backgroundColor: AppColors.NeonGreen500,
            ),
          ),
        ],
      ),
    );
  }
}
