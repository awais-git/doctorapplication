import 'package:doctor_application/constants/color.dart';
import 'package:doctor_application/pages/additional.dart';
import 'package:doctor_application/pages/signup.dart';
import 'package:doctor_application/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   
    return GestureDetector(
      onTap: (){
        FocusScopeNode _currentfocus = FocusScope.of(context);
        if(!_currentfocus.hasPrimaryFocus)
        {
          _currentfocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             Center(
                  child: SizedBox(
                    height: size.height * 0.25,
                    width: size.width * 0.38,
                    child: Image.asset(
                      'Assets/Images/logo.png',
                    ),
                  ),
                ),
                // SizedBox(
                //   height: size.height*0.009,
                // ),
                const Text(
                  "تسجيل الدخول",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.06),
               Textformfields(size: size, title: 'اسم'),
              
                SizedBox(height: size.height * 0.02),
               Textformfields(size: size, title: 'كلمه السر'),
                SizedBox(height: size.height * 0.04),
                const Text(
                  "هل نسيت كلمة السر",
                  style: TextStyle(
                    color: Color(0XFF3262CC),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: size.height*0.1,),
               SizedBox(
                        height: size.height * 0.075,
                        width: size.width * 0.8,
                        child: ElevatedButton(
                          child: const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'font'),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            primary: buttoncolor,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Addditional()));
                          },
                        ),
                      ),
          
                      SizedBox(height: size.height*0.02,),
                      SizedBox(
                        height: size.height * 0.075,
                        width: size.width * 0.8,
                        child: ElevatedButton(
                            child: const Text(
                              "إنشاء حساب",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'font'),
                            ),
                            style: ElevatedButton.styleFrom(
                              //side: const BorderSide(color: Colors.black),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              primary: buttoncolor1,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Signup()));
                            }),
                      ),
                    
                  ],
                ),
          ),
            ),
                  
            
          ),
        
      
    );
  }
}



//
//
//