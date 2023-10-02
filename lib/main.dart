import 'package:flutter/material.dart';
import 'package:starbucks/splashScreen.dart';

void main() => runApp(Star());

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),
    debugShowCheckedModeBanner: false,);
  }
}