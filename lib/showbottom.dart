import 'package:flutter/material.dart';
//import 'package:star_bucks/pages/Screens/LoginScreen/register.dart';
//import 'package:star_bucks/pages/Screens/LoginScreen/register2.dart';

import 'register.dart';

class Show_Buttom_Sheet extends StatefulWidget {
  const Show_Buttom_Sheet({super.key});

  @override
  State<Show_Buttom_Sheet> createState() => _Show_Buttom_SheetState();
}

class _Show_Buttom_SheetState extends State<Show_Buttom_Sheet> {
  GlobalKey<FormState> mailKey = GlobalKey<FormState>();
  GlobalKey<FormState> passKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isEmailvalid = false;
  bool isPhonevalid = false;
  bool isPassvalid = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 500,
            width: 411.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'SKIP',
                            style: TextStyle(color: Color(0xff016241)),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'USERNAME',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 77, 76, 76),
                        fontSize: 16),
                  ),
                  Form(
                    key: mailKey,
                    child: TextFormField(
                      controller: emailController,
                      onChanged: (text) {
                        setState(() {
                          if (text.contains('@gmail.com')) {
                            isEmailvalid = true;
                            isPhonevalid = false;
                          } else if (text.length == 10 &&
                              int.tryParse(text) != null) {
                            isEmailvalid = false;
                            isPhonevalid = true;
                          } else {
                            isEmailvalid = false;
                            isPhonevalid = false;
                          }
                        });
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter Email ID or Mobile Number',
                          hintStyle: TextStyle(
                            fontSize: 13,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff016241),
                          ))),
                      // validator: (value) {
                      //   if(emailController.text.contains('@')&&emailController.text.length<=10){
                      //     return null;
                      //   };
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'PASSWORD',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 77, 76, 76),
                        fontSize: 16),
                  ),
                  Form(
                    key: passKey,
                    child: TextFormField(
                      controller: passController,
                      onChanged: (text) {
                        setState(() {
                          isPassvalid = text.length >= 10;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(
                            fontSize: 13,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff016241),
                          ))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 77, 76, 76),
                            fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text(
                          "Sign up ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff016241),
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 47,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      child: Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                ((isEmailvalid || isPhonevalid) && isPassvalid
                                    ? Color(0xff016241)
                                    : Colors.grey)),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Facing trouble logging in? ",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 77, 76, 76),
                            fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Get Help ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff016241),
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        ),
      ),
    );
  }
}
