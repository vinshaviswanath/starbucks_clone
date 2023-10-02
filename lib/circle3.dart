import 'package:flutter/material.dart';
class Circles3 extends StatelessWidget {
  const Circles3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        
        Icon(Icons.check_circle_rounded,color:Color(0xff0f573f),size: 27,),
        Container(
          width: 110,
          height: 2,
          color: Color(0xff0f573f),
        ),
        Icon(Icons.check_circle_rounded,color:Color(0xff0f573f),size: 27,),
        Container(
          width: 110,
          height: 2,
          color: Color(0xff0f573f),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3,color: Color(0xff0f573f)),
              color: Colors.transparent
          ),
          child: Center(
            child: Text('3',style: TextStyle(
              color: Color(0xff0f573f),fontWeight:  FontWeight.w500),),
          ),
        ),
      ],
    );
  }
}
