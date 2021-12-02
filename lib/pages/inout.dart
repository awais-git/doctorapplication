import 'package:doctor_application/widgets/buttons.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Center(
          child: SizedBox(
            height: size.height * 0.39,
            width: size.width * 0.4,
            child: Image.asset(
              'Assets/Images/logo.png',
            ),
          ),
        ),
        const Text(
          "تحدث مع دكتور نفسي اونلاين",
          style: TextStyle(fontFamily: 'font', fontSize: 25),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const Text(
          " دكتورك أول موقع للعلاج النفسي في الشرق \nالأوسط",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, fontFamily: 'font', color: Colors.black54),
        ),
        Buttons(size: size,)
      ],
    )));
  }
}

