import 'package:doctor_application/pages/inout.dart';
import 'constants/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Container(
                  height: size.height * 0.07,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    //  color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('Assets/Images/logo.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.016,
              ),
              SizedBox(
                  height: size.height * 0.5,
                  width: double.infinity,
                  child: Image(
                    image: const AssetImage("Assets/Images/image.png"),
                    height: size.height * 0.46,
                    width: size.width * 0.85,
                  )),
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text(
                "تحدث مع دكتور نفسي اونلاين",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    fontFamily: 'font'),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                "دكتورك أول موقع للعلاج النفسي في الشرق",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    fontFamily: 'font'),
              ),
              const Text("الأوسط",
                  style: TextStyle(fontFamily: 'font', fontSize: 15)),
              SizedBox(
                height: size.height * 0.025,
              ),
              SizedBox(
                height: size.height * 0.07,
                width: size.width * 0.43,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: buttoncolor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Start()));
                    },
                    child: const Text("البدء")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
