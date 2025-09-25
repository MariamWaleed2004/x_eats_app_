import 'package:flutter/material.dart';
import 'package:x_eats/core/on_generate_route.dart';
import 'package:x_eats/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:x_eats/features/authentication/presentation/screens/test.dart';
import 'package:x_eats/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: OnGenerateRoute.route,

      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      //TestScreen()
      //const
      //SplashScreen(),
    );
  }
}
