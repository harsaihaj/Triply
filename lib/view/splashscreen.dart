import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Navigate to LoginScreen after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const loginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            'assets/logo/Untitled-1.png', // Correctly loads from assets
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).width,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
