import 'package:flutter/material.dart';


class mecky extends StatelessWidget {
  const mecky({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        width: double.infinity,
                        height: 475,
                        color: Color(0xffecebe9),
                        child: Center(
                          child: Container(
                            width: 360,
                            height: 380,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/images/p3.json',
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ));
  }
}