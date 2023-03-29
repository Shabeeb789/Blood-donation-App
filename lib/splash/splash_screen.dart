import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double? height;
  bool isClicked = true;
  late AnimationController _controller;
  late Animation _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..forward();
    _scaleAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    // _controller.repeat();
    _controller.addListener(() {
      // add listener will listen all the changes in the animation controller '_controller'
      // and the triggers the void function
      setState(() {});
      //by calling setstate we can reflect the changes in UI
    });

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: Center(
        child: Transform.scale(
          scale: _scaleAnimation.value,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/blood_drop.jpg',
                height: 100,
              ),
              const SizedBox(height: 10),
              Text(
                'Blood Donation App',
                style: GoogleFonts.lobster(
                  color: const Color.fromARGB(255, 139, 12, 12),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
