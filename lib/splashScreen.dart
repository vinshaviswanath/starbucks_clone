import 'package:flutter/material.dart';
import 'package:starbucks/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    
    super.initState();
    // splash Screen delay
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context)=>HomeScreen()
          )
          );
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Image.asset('assets/images/Splash.jpg',height: double.infinity,
        width: double.infinity,fit: BoxFit.cover,),
      ),
    );
  }
}