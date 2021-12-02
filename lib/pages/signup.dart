import 'package:doctor_application/constants/color.dart';
import 'package:doctor_application/pages/login.dart';
import 'package:doctor_application/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final keyboard = MediaQuery.of(context).viewInsets.bottom!=0;
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ()
      {
       FocusScopeNode _currentnode = FocusScope.of(context);
       if (!_currentnode.hasPrimaryFocus) {
         _currentnode.unfocus();
       }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false, 
        body: SafeArea(
    
          child: Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               if(!keyboard) Center(
                  child: SizedBox(
                    height: size.height * 0.23,
                    width: size.width * 0.35,
                    child: Image.asset(
                      'Assets/Images/logo.png',
                    ),
                  ),
                ),
                const Text(
                  "إنشاء حساب",
                  style: TextStyle(fontSize: 24, fontFamily: 'font'),
                ),
                SizedBox(height: size.height * 0.06),
                Textformfields(size: size, title: 'اسم'),
                SizedBox(height: size.height * 0.02),
                Textformfields(size: size, title: 'البريد الإلكتروني'),
                SizedBox(height: size.height * 0.02),
                Textformfields(size: size, title: 'لمة السر'),
                SizedBox(height: size.height * 0.02),
                Textformfields(size: size, title: 'رقم الهاتف'),
                Expanded(
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: size.height * 0.1,
                          left: size.width * 0.1,
                          child: SizedBox(
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
                                      builder: (context) => const Login()));
                                }),
                          ),
                        ),
                        Positioned(
                         bottom: 0,
                          left: size.width * 0.1,
                          child: SizedBox(
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
                                    builder: (context) => const Login()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
