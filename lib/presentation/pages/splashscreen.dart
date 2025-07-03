import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cybershield/presentation/widgets/bn_navigator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animations/animation.json', height: 220),
          const SizedBox(height: 20),
          const Text(
            'Cyber Shield',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              color: Color.fromARGB(255, 229, 215, 89),
              fontStyle: FontStyle.italic,
            
              shadows: [
                Shadow(
                  blurRadius: 8.0,
                  color: Colors.black45,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
        ],
      ),
      duration: 3500,
      splashIconSize: 300,
      backgroundColor: const Color.fromARGB(255, 55, 85, 141),
      nextScreen: const BnNavigator(),
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: const Duration(milliseconds: 1000),
    );
  }
}
