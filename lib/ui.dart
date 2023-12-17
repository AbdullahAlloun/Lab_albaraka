import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:products/main.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.pinkAccent,
      pageTransitionType: PageTransitionType.leftToRight,
      splashTransition: SplashTransition.sizeTransition,
      splash: Image.asset('images/Logo.png'),
      animationDuration: Duration(seconds: 1),
      nextScreen: HomePage(),
    );
  }
}
