import 'package:doctor_application/constants/color.dart';
import 'package:flutter/material.dart';
class Textformfields extends StatelessWidget {
  const Textformfields({
    Key? key,
    required this.size, required this.title,
   
  }) : super(key: key);

  final Size size;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.8,
      height: size.height * 0.07,
      child: TextFormField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
              hintText:title,
              fillColor: formfieldfillcolor,
              filled: true,
              hintStyle: const TextStyle(fontSize: 16 , fontFamily: 'font' , color: Colors.black54),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )))),
    );
  }
}