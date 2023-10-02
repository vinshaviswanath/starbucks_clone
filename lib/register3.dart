import 'package:flutter/material.dart';
import 'package:starbucks/circle3.dart';
import 'package:starbucks/mainScreen.dart';
import 'package:starbucks/register2.dart';
import 'package:starbucks/text1.dart';

class Register3 extends StatefulWidget {
  const Register3({super.key});

  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  GlobalKey<FormState> fnameKey = GlobalKey<FormState>();
  GlobalKey<FormState> lnameKey = GlobalKey<FormState>();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  final _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Details',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Color(0xff1e3932),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register2()));
            },
            icon: Icon(Icons.arrow_back_ios)),
        elevation: 0,
      ),
      backgroundColor: Color(0xff1e3932),
      body: Column(
        children: [
          Container(
            height: 784,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 55),
                      child: Circles3(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'ONE FINAL STEP , TELL US A LITTLE AABOUT YOU',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextCode(titles: 'FIRST NAME*', fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        key: fnameKey,
                        child: TextFormField(
                          controller: fnameController,
                          onChanged: (text) {
                            setState(() {

                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter First Name ',
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextCode(titles: 'LAST NAME*', fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        key: lnameKey,
                        child: TextFormField(
                          controller: lnameController,
                          onChanged: (text) {
                            setState(() {
                        
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Last Name ',
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
                      padding: const EdgeInsets.only(left: 20),
                      child: TextCode(titles: 'BRITH DATE*', fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        child: TextFormField(
                          controller: _dateController,
                          onChanged: (text) {
                            setState(() {
                              
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Enter Last Name ',
                              hintStyle: TextStyle(
                                fontSize: 13,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () => _showDatePicker(context),
                                  icon: Icon(
                                    Icons.date_range_sharp,
                                    color: Color(0xff016241),
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextCode(
                          titles:
                              'Share your birthdate to receive a reward during that mounth.it can not be changed after submission',
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          width: 370,
                          height: 170,
                          decoration: BoxDecoration(
                              color: Color(0xffe0c49d),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Got a referal code ? ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 120),
                                child: Text(
                                    'If you have a Starbucks referral code ,enter it here for a special rewards'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, bottom: 20),
                                    child: Ink(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              'Enter Code',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'PREFFERENCES & TERMS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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
                      padding: const EdgeInsets.only(left: 20),
                      child: TextCode(
                          titles: 'Where shall we reach you?', fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.check_box,
                            color: Color(0xff016241),
                            size: 30,
                          ),
                        ),SizedBox(width: 10,),
                        Text(
                          'SMS',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                        ),SizedBox(width: 60,),
                         Icon(
                            Icons.check_box,
                            color: Color(0xff016241),
                            size: 30,
                          ),SizedBox(width: 10,),
                        Text(
                          'E-Mail',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text.rich(
          TextSpan(text: 'By joining,I agree to the Terms & Conditions,Please read ',
          children: [
          TextSpan(text: 'Terms of Use ',style: TextStyle(color: Color(0xff016241),decoration: TextDecoration.underline,fontSize: 14)),
          TextSpan(text: 'and '),
          TextSpan(text: 'Privacy Policy ',style: TextStyle(color: Color(0xff016241),decoration: TextDecoration.underline,fontSize: 14)),
          TextSpan(text: 'before signing up')]),),
        ),
        
        Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                child: GestureDetector(
                  onTap: ()=>
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen())),
                  child: Container(
                    width: 360,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                       fnameController == _dateController
                       ? Color(0xff016241)
                       : Colors.grey ),
                    
                    child: Center(
                      child: 
                      Text('Finish Sign Up',style: TextStyle(
                        color: Colors.white,fontSize: 16),)
                      ),
                      
                  ),
                ),
              ),

                  ]),
            ),
          ),
        ],
      ),
    ));
  }

  void _showDatePicker(BuildContext context) async {
    // Hide the keyboard if it is shown
    FocusScope.of(context).requestFocus(FocusNode());

    // Get the selected date from the date picker
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    // If the user selected a date, update the text field with the formatted date
    
    }
  }

