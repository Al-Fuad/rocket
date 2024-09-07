import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:rocket/features/rocket/home/ui/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.black,
        duration: 3000,
        splash: "assets/logo/logoDark.png", 
        splashIconSize: MediaQuery.of(context).size.width / 2,
        nextScreen: const Home(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        );
  }
}
