import 'package:flutter/material.dart';
import 'dart:core';

import 'package:starbucks/button.dart';
import 'package:starbucks/mainScreen.dart';


import 'showbottom.dart';
//import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // splash Screen delay
    Future.delayed(Duration(seconds: 1), () {
      _showButtomSheet();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int currentHour = now.hour;

    String timePrioid;
    if (currentHour >= 1 && currentHour < 12) {
      timePrioid = 'morning';
    } else if (currentHour >= 12 && currentHour < 18) {
      timePrioid = 'Afternoon';
    } else {
      timePrioid = 'Evening';
    }

    Map<String, String> images = {
      'morning': 'morning.jpg',
      'Evening': 'evening.jpg',
      'Afternoon': 'Afternoon.jpg',
    };
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        'assets/images/${images[timePrioid]}',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 770),
          child: MyButton(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));

            },
          ),
        ),
      )
    ]));
  }

  void _showButtomSheet() {
   
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (context) {
          return Show_Buttom_Sheet();
        });
  }
}
