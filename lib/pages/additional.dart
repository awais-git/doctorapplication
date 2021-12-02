
import 'package:doctor_application/pages/bottombar.dart';
import 'package:doctor_application/pages/videos.dart';
import 'package:flutter/material.dart';

class Addditional extends StatelessWidget {
  const Addditional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
          const Text(
            "إضافي",
            style: TextStyle(fontSize: 22, fontFamily: 'font'),
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Bottombar(
                        pageindex: 1,
                      )));
            },
            child: const Text(
              "الرئيسية",
              style: TextStyle(fontSize: 18, fontFamily: 'font'),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Divider(
            thickness: 2,
            endIndent: 60,
            indent: 60,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  Bottombar(

                pageindex : 2,
              )));
              
            },
            child: const Text(
              "كيف تحجز جلستك",
              style: TextStyle(fontSize: 18, fontFamily: 'font'),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Divider(
            thickness: 2,
            endIndent: 60,
            indent: 60,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Bottombar(
                        pageindex: 0,
                      )));
            },
            child: const Text(
              "الأسئلة الشائعة",
              style: TextStyle(fontSize: 18, fontFamily: 'font'),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Divider(
            thickness: 2,
            endIndent: 60,
            indent: 60,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Text(
            "جلساتي",
            style: TextStyle(fontSize: 18, fontFamily: 'font'),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Divider(
            thickness: 2,
            endIndent: 60,
            indent: 60,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          InkWell(
            onTap: ()
            {
              Navigator.of(context).pop();
            },
            child: const Text(
              "تسجيل خروج",
              style: TextStyle(fontSize: 18, fontFamily: 'font'),
            ),
          ),
        ],
      )),
    );
  }
}
