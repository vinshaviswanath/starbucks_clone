import 'package:flutter/material.dart';
import 'package:starbucks/circles.dart';
import 'package:starbucks/homeScreen.dart';
import 'package:starbucks/register2.dart';
import 'package:starbucks/text1.dart';

//import 'package:star_bucks/pages/Screens/LoginScreen/register3.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  GlobalKey<FormState> cpassKey = GlobalKey<FormState>();
  GlobalKey<FormState> conpassKey = GlobalKey<FormState>();
  GlobalKey<FormState> numKey = GlobalKey<FormState>();
  TextEditingController mailController = TextEditingController();
  TextEditingController cpassController = TextEditingController();
  TextEditingController conpassController = TextEditingController();
  TextEditingController numController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create an Account'),
          backgroundColor: Color(0xff1e3932),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(Icons.arrow_back_ios)),
          elevation: 0,
        ),
        backgroundColor: Color(0xff1e3932),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 784,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 30),
                child: Circles(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Login to Starbucks',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 20,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: TextCode(titles: 'EMAIL ID', fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: emailKey,
                  child: TextFormField(
                    controller: mailController,
                    onChanged: (text) {
                      setState(() {
                      
                      });
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter Email ID ',
                        hintStyle: TextStyle(
                          fontSize: 13,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff016241),
                        ))),
                   
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: TextCode(titles: 'CREATE PASSWORD', fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: cpassKey,
                  child: TextFormField(
                    controller: cpassController,
                    onChanged: (text) {
                      setState(() {
                     
                      });
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter Password ',
                        hintStyle: TextStyle(
                          fontSize: 13,
                        ),
                        suffixIcon: GestureDetector(
                            child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff016241),
                          size: 20,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff016241),
                        ))),
                    
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 240, 240, 240)),
                      child: Center(
                          child: TextCode(
                        titles: '8 Characters',
                        fontSize: 10,
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 240, 240, 240)),
                      child: Center(
                          child: TextCode(
                        titles: '1 Uppercase',
                        fontSize: 10,
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 240, 240, 240)),
                      child: Center(
                          child: TextCode(
                        titles: '1 Numeric',
                        fontSize: 10,
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 240, 240, 240)),
                      child: Center(
                          child: TextCode(
                        titles: '1 Symbol',
                        fontSize: 10,
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextCode(titles: 'CONFIRM PASSWORD', fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: conpassKey,
                  child: TextFormField(
                    controller: conpassController,
                    onChanged: (text) {
                      setState(() {
                        
                      });
                    },
                    decoration: InputDecoration(
                        hintText: 'Re-enter Password',
                        hintStyle: TextStyle(
                          fontSize: 13,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff016241),
                        ))),
                   
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextCode(titles: 'MOBILE NUMBER', fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: numKey,
                  child: TextFormField(
                    controller: numController,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    onChanged: (text) {
                      setState(() {
                      
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
                   
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                child: GestureDetector(
                  onTap: ()=>
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register2())),
                  child: Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                       conpassController == cpassController
                       ? Color(0xff016241)
                       : Colors.grey ),
                    
                    child: Center(
                      child: 
                      Text('Login',style: TextStyle(
                        color: Colors.white,fontSize: 16),)
                      ),
                      
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
