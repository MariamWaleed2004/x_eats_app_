import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/button_container_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    final containerSize = width * 0.3;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: height * 0.8,
            width: width,
            child: SvgPicture.asset('assets/logo/bg.svg', fit: BoxFit.cover),
          ),
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
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: width,
              height: height * 0.6,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(0, -2),
                    spreadRadius: 0.25,
                  ),
                ],
                border: Border(top: BorderSide(color: Colors.grey.shade300)),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(width * 0.06),
                  topRight: Radius.circular(width * 0.06),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.025,
                  horizontal: width * 0.075,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to X-eats',
                      style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 0.005),
                    Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    ButtonContainerWidget(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: width * 0.06,
                            width: width * 0.06,
                            child: SvgPicture.asset(
                              'assets/google_logo/google_logo.svg',
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      onTapListener: () {
                        () {};
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    ButtonContainerWidget(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: width * 0.04,
                            width: width * 0.04,
                            child: SvgPicture.asset(
                              'assets/email_logo/email.svg',
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Text(
                            'Continue with Email',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      onTapListener: () {
                        Navigator.pushNamed(context, ScreenConst.signInScreen);
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: AppColors.grey, thickness: 1),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          'or',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        Expanded(
                          child: Divider(color: AppColors.grey, thickness: 1),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    ButtonContainerWidget(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: width * 0.04,
                            width: width * 0.04,
                            child: SvgPicture.asset(
                              'assets/user_logo/user.svg',
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Text(
                            'Continue as a Guest',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      onTapListener: () {
                        () {};
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have an account ? ',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.035,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          'Register now',
                          style: TextStyle(
                            color: AppColors.darkGreen,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.035,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.055),
                    Center(
                      child: Text(
                        'Use the application according to privacy rules, Any kind of violation will be subject sanction',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                  
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
