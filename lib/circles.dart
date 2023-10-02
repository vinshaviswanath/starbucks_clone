import 'package:flutter/material.dart';
class Circles extends StatelessWidget {
  const Circles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3,color: Color(0xff0f573f)),
              color: Colors.transparent
          ),
          child: Center(
            child: Text('1',style: TextStyle(color:Color(0xff0f573f) ),),
          ),
        ),
        Container(
          width: 110,
          height: 1,
          color: Color(0xffdfebe7),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3,color: Color(0xffdfebe7)),
              color: Colors.transparent
          ),
          child: Center(
            child: Text('2',style: TextStyle(color: Color(0xffdfebe7) ),),
          ),
        ),
        Container(
          width: 110,
          height: 1,
          color: Color(0xffdfebe7),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3,color: Color(0xffdfebe7)),
              color: Colors.transparent
          ),
          child: Center(
            child: Text('3',style: TextStyle(color: Color(0xffdfebe7) ),),
          ),
        ),
      ],
    );
  }
}
