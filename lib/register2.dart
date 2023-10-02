import 'package:flutter/material.dart';
import 'package:starbucks/circle2.dart';
import 'package:starbucks/register.dart';
import 'package:starbucks/text1.dart';

class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Create an Account'),
        backgroundColor: Color(0xff1e3932),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
        }, icon: Icon(Icons.arrow_back_ios)),
        elevation: 0,
      ),
      backgroundColor: Color(0xff1e3932),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 50,top: 30),
                 child: Circles2(),
               ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text('OTP was sent to ',style: TextStyle(color: Colors.black,fontSize: 14),),
                    Text('+91********46',style: TextStyle(color:Color(0xff347f66),decoration: TextDecoration.underline,fontSize: 17 ),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextCode(titles: 'Please enter the OTP you have received on your registered', fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 5),
                child: TextCode(titles: 'Mobile Number.', fontSize: 14),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextCode(titles: 'Enter OTP', fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
               
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
