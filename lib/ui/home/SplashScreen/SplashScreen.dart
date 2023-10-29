import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/ui/home/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash-screen';

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        'assets/images/splash_background_light.png',
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
