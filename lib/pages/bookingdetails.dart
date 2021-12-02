import 'package:flutter/material.dart';

class Bookingdetails extends StatelessWidget {
  const Bookingdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.1),
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
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.19,
                  ),
                  const Text(
                    'احجز جلسة',
                    style: TextStyle(color: Colors.white, fontFamily: 'font'),
                  ),
                  Column(
                      children: List.generate(5, (index) {
                    return Container(
                        margin: EdgeInsets.only(top: size.height * 0.03),
                        height: size.height * 0.08,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: size.height * 0.02,
                              left: size.width * 0.04,
                              child: SizedBox(
                                  height: size.height * 0.04,
                                  child: ElevatedButton(
                                    onPressed: () {},
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
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: size.width * 0.02,
                                  left: size.width * 0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                       Text(
                                        'يونيو - ',
                                        style: TextStyle(
                                            fontSize: 18, fontFamily: 'font'),
                                      ),
                                         Text(
                                        'م08:00',
                                        style: TextStyle(
                                            fontSize: 18, fontFamily: 'font' , color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  const Text(
                                    '(60 دقيقة) - 1253.47 EGP',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'font'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  }))
                ],
              ),
            ),
          )),
    );
  }
}
