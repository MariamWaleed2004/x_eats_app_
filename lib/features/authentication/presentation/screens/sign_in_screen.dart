import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_button.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    final containerSize = width * 0.3;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.15,
                  horizontal: width * 0.07,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.17,
                          height: width * 0.17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              containerSize * 0.1,
                            ),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/logo/x.png",
                              width: width * 0.1,
                              height: height * 0.05,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.025),
                        Text(
                          "eats",
                          style: GoogleFonts.poppins(
                            letterSpacing: -3,
                            fontSize: width * 0.17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 82),

                    SizedBox(
                      width: 366,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomTextField(
                            label: 'Email',
                            keyboardType: TextInputType.emailAddress,
                          ),

                          SizedBox(height: 42),
                          CustomTextField(label: 'Password', obscureText: true),
                          SizedBox(height: 5),
                          CustomTextButton(
                            text: 'Forgot Password?',
                            textColor: AppColors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                ScreenConst.emailScreen,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 42),
                    SizedBox(
                      width: 366,
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.darkGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 42),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have an account ? ',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        CustomTextButton(
                          text: 'Register now',
                          textColor: AppColors.darkGreen,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              ScreenConst.emailScreen,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 32),
              child: Center(
                child: Text(
                  'Use the application according to privacy rules, Any kind of violation will be subject sanction',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: width * 0.03),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
