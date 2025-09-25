import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/screens/sign_in_screen.dart';
import 'package:x_eats/features/authentication/presentation/screens/sign_up_screens/email_screen.dart';
import 'package:x_eats/features/authentication/presentation/screens/sign_up_screens/name_screen.dart';
import 'package:x_eats/features/authentication/presentation/screens/sign_up_screens/password_screen.dart';
import 'package:x_eats/features/authentication/presentation/screens/sign_up_screens/phone_number_screen.dart';
import 'package:x_eats/features/authentication/presentation/screens/sign_up_screens/verify_screen.dart';

class OnGenerateRoute {
  User? user = FirebaseAuth.instance.currentUser;

  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case ScreenConst.signInScreen:
        {
          return _fadeRoute(SignInScreen());
        }
      case ScreenConst.emailScreen:
        {
          return _fadeRoute(EmailScreen());
        }
      case ScreenConst.passwordScreen:
        {
          return _fadeRoute(PasswordScreen());
        }
      case ScreenConst.phoneNumberScreen:
        {
          return _fadeRoute(PhoneNumberScreen());
        }
      case ScreenConst.verifyScreen:
        {
          return _fadeRoute(VerifyScreen());
        }
          case ScreenConst.nameScreen:
        {
          return _fadeRoute(NameScreen());
        }
      default:
        NoScreenFound();
    }
  }

  static PageRouteBuilder _fadeRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

class NoScreenFound extends StatelessWidget {
  const NoScreenFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page not found')),
      body: Center(child: Text('Page not found')),
    );
  }
}
