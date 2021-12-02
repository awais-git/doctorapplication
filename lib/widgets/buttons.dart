import 'package:doctor_application/constants/color.dart';
import 'package:doctor_application/pages/login.dart';
import 'package:doctor_application/pages/signup.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
 

  @override
  Widget build(BuildContext context) {
    return 
        Expanded(
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  bottom: size.height * 0.2,
                  left: size.width*0.1,
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
                Positioned(
                  bottom: size.height * 0.1,
                  left: size.width*0.1,
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
                              builder: (context) => const Signup()));
                        }),
                  ),
                ),
              ],
            ),
          ),
        
      
    );
  }
}
