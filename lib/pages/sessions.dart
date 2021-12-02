import 'package:doctor_application/constants/color.dart';
import 'package:doctor_application/pages/doctordetail.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Sessions extends StatelessWidget {
  const Sessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.06),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: double.infinity,
                decoration: const BoxDecoration(
                  //  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('Assets/Images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                'اختر دكتورك الأن',
                style: TextStyle(fontFamily: 'font', fontSize: 21),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء \n الصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص\n  أو شكل توضع الفقرات',
                style: TextStyle(
                    fontFamily: 'font', color: Colors.black87, fontSize: 14.5),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.023,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.05),
                child: const Image(
                  image: AssetImage('Assets/Images/banner.png'),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              OnlineDoctors(
                size: size,
                status: 'المتاحين الآن',
                details: 'بامكانك الحجز والتحدث فورا',
                color: const Color(0XFF00B257),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              OnlineDoctors(
                size: size,
                status: 'الغير متاحين الآن',
                details: 'يمكنك الحجز من خلال الجدول الوقت الذي يناسبك',
                color: const Color(0XFFC2C3C2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnlineDoctors extends StatelessWidget {
  const OnlineDoctors({
    Key? key,
    required this.size,
    required this.status,
    required this.details,
    required this.color,
  }) : super(key: key);

  final Size size;
  final String status;
  final String details;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: size.height * 0.07,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: size.height * 0.035,
                    width: size.width * 0.035,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: color),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    status,
                    style: const TextStyle(fontSize: 21, fontFamily: 'font'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.06),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'عرض الكل',
                  style: TextStyle(
                    color: Color(0XFF3262CC),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Positioned(
                bottom: 0,
                right: size.width * 0.06,
                child: Text(
                  details,
                  style: const TextStyle(fontFamily: 'font'),
                )),
          ],
        ),
      ),
      SizedBox(
        height: size.height * 0.04,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:  EdgeInsets.only(left : size.width * 0.15),
          child: Row(
              children: List.generate(4, (index) {
            return Padding(
              padding: EdgeInsets.only(right: size.width * 0.02),
              child: SizedBox(
                height: size.height * 0.45,
                width: size.width * 0.7,
                
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 2,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Detailsdoctor()));
                        },
                        child: Container(
                            height: size.height * 0.35,
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    color: Colors.black12,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                           
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Padding(
                                      padding:  EdgeInsets.only(
                                        
                                       top: size.height * 0.09,
                                 
                                 ),
                                        
                                        
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children : [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            '(25)',
                                            style: TextStyle(color: Colors.black54),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Row(
                                              children: List.generate(5, (index) {
                                            return const Icon(
                                              Icons.star_rate_sharp,
                                              color: Colors.yellow,
                                              size: 18,
                                            );
                                          })),
                                        ],
                                      ),
                                      
                                      
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                       Text(
                                        'د. ميراي فرنسيس',
                                        style: TextStyle(
                                            fontFamily: 'font', fontSize: size.height*0.03),
                                      ),
                                       Text(
                                        'دكتوراه العلاج النفسي',
                                        style: TextStyle(
                                            fontFamily: 'font',
                                            fontSize: size.height*0.021,
                                            color: Colors.black54),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      const Text(
                                        '1098.53EGP',
                                        style: TextStyle(
                                            color: Color(0XFF00B257),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Text('1098.53EGP',
                                          style: TextStyle(
                                              fontSize: 17,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                        ],
                                      ),
                                    ),
                              
                                  Expanded(
                                    child: Padding(
                                      padding:  EdgeInsets.only(bottom : size.height *0.01 , right: size.width*0.05 , left : size.width*0.05),
                                      child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              
                                              width: size.width*0.24,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('احجز '),
                                                style: ElevatedButton.styleFrom(
                                                    primary: buttoncolor,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(20))),
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.02,
                                            ),
                                            SizedBox(
                                              width: size.width*0.24,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('عرض '),
                                                style: ElevatedButton.styleFrom(
                                                    primary: buttoncolor1,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(20))),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ),
                                  )
                                  ],
                                ),
                              ),
                            //)
                            ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                   
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                'https://doctorsdig.com/wp-content/uploads/2021/10/%D8%B9%D9%8A%D8%A7%D8%AF%D8%A9-%D8%AF%D9%83%D8%AA%D9%88%D8%B1%D8%A9-%D9%86%D9%81%D8%B3%D9%8A%D8%A9-%D8%A8%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6-300x300.webp'),
                          )
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.141, left: size.width * 0.26),
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.4,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.146, left: size.width * 0.22),
                      child: Container(
                        height: size.height * 0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.12, left: size.width * 0.03),
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.025,
                            width: size.width * 0.1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  'Assets/Images/whatsapp.png',
                                ),
                              ),
                            ),
                          ),
                        const   SizedBox(height: 5,),
                          Container(
                            height: size.height * 0.025,
                            width: size.width * 0.1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  'Assets/Images/message.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Container(
                            height: size.height * 0.025,
                            width: size.width * 0.1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  'Assets/Images/zoom.png',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          })),
        ),
      ),
    ]);
  }
}
