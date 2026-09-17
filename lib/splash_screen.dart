import 'package:flutter/material.dart';

class SplashScreenDay15 extends StatefulWidget {
  const SplashScreenDay15({super.key});

  @override
  State<SplashScreenDay15> createState() => _SplashScreenDay15State();
}

class _SplashScreenDay15State extends State<SplashScreenDay15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(child: Image.asset('assets/splash.png')),
      ),
    );
  }
}