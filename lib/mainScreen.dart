import 'package:flutter/material.dart';
import 'package:starbucks/button.dart';
import 'package:starbucks/clipcart.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green,
          body: Column(
            children: [
              Stack(children: [
                Image.asset(
                  'assets/images/appbar.jpg',
                  fit: BoxFit.fill,
                  height: 150,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: IconButton(
                      onPressed: () => (),
                      icon: Icon(
                        Icons.home_filled,
                        size: 35,
                        color: Colors.transparent,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 365, top: 20),
                  child: IconButton(
                      onPressed: () => (),
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.transparent,
                        size: 30,
                      )),
                )
              ]),
              Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    'assets/images/p2.jpg',
                  ))),
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/p2.jpg',
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                        right: 13, top: 21, child: MyButton(onTap: () => ()))
                  ])),
              Container(
                width: double.infinity,
                height: 620,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    mecky(),
                    Container(
                      width: double.infinity,
                      height: 550,
                    ),
                    //GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount), itemBuilder: itemBuilder)
                  ]),
                ),
              )
            ],
          )),
    );
  }
}
