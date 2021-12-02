import 'package:doctor_application/pages/bookingdetails.dart';
import 'package:flutter/material.dart';

class Bookiong extends StatelessWidget {
  const Bookiong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.7),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.05, left: size.width * 0.05),
              child: ListView(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    children:  [
                      IconButton(
                        onPressed : (){
                          Navigator.of(context).pop();
                        } , 
                       icon  :  const Icon(Icons.arrow_back,
                        color: Colors.white,)
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  const Text(
                    'احجز جلسة',
                    style: TextStyle(color: Colors.white, fontFamily: 'font'),
                  ),
                  Column(
                      children: List.generate(2, (index) {
                    return Container(
                      margin: EdgeInsets.only(top: size.height * 0.03),
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: size.width * 0.02, left: size.width * 0.02),
                        child: Row(
                          children: [
                            const Text(
                              'دقيقة 60',
                              style:
                                  TextStyle(fontSize: 16, fontFamily: 'font'),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            const Text(
                              '1253.47 EGP',
                              style: TextStyle(fontSize: 16),
                            ),
                            const Spacer(),
                            SizedBox(
                                height: size.height * 0.04,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(PageRouteBuilder(
                                        opaque: false,
                                        pageBuilder:
                                            (BuildContext context, _, __) =>
                                                const Bookingdetails()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0XFF0277B2),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: const Text(
                                    'حجز',
                                    style: TextStyle(
                                        fontFamily: 'font ',
                                        color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  }))
                ],
              ),
            ),
          )),
    );
  }
}
