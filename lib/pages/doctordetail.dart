import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_application/constants/color.dart';
import 'package:doctor_application/pages/booktimings.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';

enum pagestack { reviews, profilepersonally, videos, packages }

class Detailsdoctor extends StatefulWidget {
  const Detailsdoctor({Key? key}) : super(key: key);

  @override
  State<Detailsdoctor> createState() => _DetailsdoctorState();
}

class _DetailsdoctorState extends State<Detailsdoctor> {
  pagestack widgetscrolling = pagestack.reviews;

  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.network('https://youtu.be/PUXShrbUTu8')
          ..addListener(() => setState(() {}))
          ..setLooping(true)
          ..initialize().then((_) => _videoPlayerController.play());
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  int activeindex = 3;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.15),
            child: Column(children: [
              Container(
                color: const Color(0XFF006396),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.06,
                      right: size.width * 0.06,
                      left: size.width * 0.02),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'Assets/Images/Docimg.webp',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right : 20.0),
                                    child: Column(
                                      
                                      children: [
                                        const Text(
                                          'د. ميراي فرنسيس',
                                          style: TextStyle(
                                              fontFamily: 'font',
                                              fontSize: 22,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'دكتوراه العلاج النفسي',
                                          style: TextStyle(
                                              fontFamily: 'font',
                                              fontSize: 17,
                                              color:
                                                  Colors.white.withOpacity(0.7)),
                                        ),
                                        Row(
                                         
                                          children: [
                                            Row(
                                                children:
                                                    List.generate(5, (index) {
                                              return const Icon(
                                                Icons.star_rate_sharp,
                                                color: Colors.yellow,
                                                size: 18,
                                              );
                                            })),
                                            SizedBox(
                                              width: size.width * 0.02,
                                            ),
                                            const Text(
                                              '(۲۰)',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(bottom : 10.0),
                                child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFC0C0C0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      
                                       child: const ReadMoreText(
                                          "  الاكتئاب، القلق، التوتر، الوسواس القهرياستشارات الزواج، اضطراب المزاج ",
                                          style: TextStyle(
                                            
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                          ),
                                          lessStyle: TextStyle(color: Colors.deepPurpleAccent),
                                            moreStyle: TextStyle(color: Colors.deepPurpleAccent),
                                          trimLines: 1,
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: '... المزيد',
                                          trimExpandedText: 'تظهر أقل',
                                        ),
                                      ),
                                      ),
                              ),
                                  
                            ],
                          ),
                        ),

                      
                      ],
                    ),
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                    padding: EdgeInsets.only(
                        right: size.width * 0.06, left: size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        section(
                            size,
                            'التقييمات',
                            widgetscrolling == pagestack.reviews
                                ? const Color(0XFF02B158)
                                : Colors.white,
                            widgetscrolling == pagestack.reviews
                                ? Colors.white
                                : Colors.black, () {
                          setState(() {
                            widgetscrolling = pagestack.reviews;
                            print('1');
                          });
                        }),
                        section(
                            size,
                            'الملف الشخصي',
                            widgetscrolling == pagestack.profilepersonally
                                ? const Color(0XFF02B158)
                                : Colors.white,
                            widgetscrolling == pagestack.profilepersonally
                                ? Colors.white
                                : Colors.black, () {
                          setState(() {
                            widgetscrolling = pagestack.profilepersonally;
                            print('1');
                          });
                        }),
                        section(
                            size,
                            ' الفيديوهات',
                            widgetscrolling == pagestack.videos
                                ? const Color(0XFF02B158)
                                : Colors.white,
                            widgetscrolling == pagestack.videos
                                ? Colors.white
                                : Colors.black, () {
                          setState(() {
                            widgetscrolling = pagestack.videos;
                            print('1');
                          });
                        }),
                        section(
                            size,
                            'الباقات',
                            widgetscrolling == pagestack.packages
                                ? const Color(0XFF02B158)
                                : Colors.white,
                            widgetscrolling == pagestack.packages
                                ? Colors.white
                                : Colors.black, () {
                          setState(() {
                            widgetscrolling = pagestack.packages;
                            print('1');
                          });
                        }),
                      ],
                    )),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              //1st index
              getwidgets(size),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'المواعيد المتاحة',
                      style: TextStyle(fontFamily: 'font', fontSize: 18),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: size.height * 0.03,
              ),

              Container(
                width: size.width * 0.85,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(1, 1),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.keyboard_arrow_down),
                      Spacer(),
                      Text(
                        'Asia/Karachi (GMT +5:00)',
                        style: TextStyle(fontFamily: 'font', fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: size.width * 0.85,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: bluecolor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 0.5,
                        spreadRadius: 0.5,
                        offset: Offset(1, 1),
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.02, left: size.width * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          '60 دقيقة 1253.47 EGP',
                          style: TextStyle(
                              fontFamily: 'font',
                              fontSize: 17,
                              color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '30 دقيقة 1253.47 EGP',
                        style: TextStyle(
                            fontFamily: 'font',
                            fontSize: 17,
                            color: Colors.white),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(MdiIcons.arrowRightDropCircle , color: bluecolor,),
                    containerdetails(size, 'الخميس'),
                    containerdetails(size, 'غدا'),
                    containerdetails(size, 'اليوم'),
                    const Icon(MdiIcons.arrowLeftDropCircle , color: bluecolor,),
                  ],
                ),
              )
            ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: floatingbuttons(size),
      ),
    );
  }

  Widget floatingbuttons(Size size) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.06,
            width: size.width * 0.4,
            child: ElevatedButton(
              onPressed: () {},
              child: const FittedBox(
                  child: Text("احجز فورا",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'font',
                      ))),
              style: ElevatedButton.styleFrom(
                  primary: bluecolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          SizedBox(
            height: size.height * 0.06,
            width: size.width * 0.4,
            child: ElevatedButton(
              onPressed: () {},
              child: const FittedBox(
                  child: Text(
                "احجز من الجدول",
                style: TextStyle(color: Colors.white, fontFamily: 'font'),
              )),
              style: ElevatedButton.styleFrom(
                  primary: bluecolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }

  section(Size size, String text, Color color, Color textcolor,
      GestureTapCallback onTap) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.01),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: size.height * 0.06,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15)),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'font',
                    fontSize: 17,
                    color: textcolor,
                    // widgetscrolling == pagestack.reviews
                    //     ? Colors.white
                    //     : Colors.black
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  containerdetails(Size size, String text) {
    return Container(
     
      width: size.width * 0.28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              spreadRadius: 0.5,
              blurRadius: 0.5,
              color: Colors.black12,
              offset: Offset(0, 0),
            )
          ]),
      child: Column(
        children: [
        
          Container(
           
            decoration : BoxDecoration(
               color: bluecolor,
               borderRadius: BorderRadius.circular(5),
            ),
            width: double.infinity,
            child: Center(
              child: Text(
                
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'font',
                  fontSize: 15,
                ),
                
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          const Text(
            '12:00 ص',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'font', color: bluecolor, //fontSize: 16
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          const Text(
            '(30 دقيقة)',
            style: TextStyle(
              fontSize: 16,fontFamily: 'font', color: Colors.black54),
            textDirection: TextDirection.ltr,
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          const Text(
            '12:00 ص',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'font', color:bluecolor,
              //fontSize: 16
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          const Text(
            '(60 دقيقة)',
            style: TextStyle(
              fontSize: 16,fontFamily: 'font', color: Colors.black54),
            textDirection: TextDirection.ltr,
          ),
           const Text(
            '12:00 ص',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'font', color:bluecolor,
              //fontSize: 16
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          const Text(
            '(60 دقيقة)',
            style: TextStyle(
              fontSize: 16,fontFamily: 'font', color: Colors.black54),
            textDirection: TextDirection.ltr,
          ),
          SizedBox(
            width: double.infinity,
            height: size.height * 0.04,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: const Color(0xFFD5E0F4)),
              onPressed: () {},
              child: const Text(
                'المزيد',
                style: TextStyle(fontFamily: 'font' , color : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  elevatedbuttons(String text, Size size) {
    return SizedBox(
      height: size.height * 0.07,
      width: size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
              color: Color(0XFF3262CC), fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  Widget getwidgets(Size size) {
    switch (widgetscrolling) {
      case pagestack.reviews:
        return Comment(size: size);

      case pagestack.profilepersonally:
        return profilepersonally(size);

      case pagestack.videos:
        return Column(
          children: [
            videos(size),
            videos(size),
            videos(size),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Text('عرض المزيد',
                  style: TextStyle(
                    color: Color(0XFF3262CC),
                  )),
            )
          ],
        );

      case pagestack.packages:
        return packages(size, context);
    }
  }
}

Widget packages(Size size, BuildContext context) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Column(
      children: [
        Container(
            margin: EdgeInsets.only(right: size.width * 0.1),
            alignment: Alignment.centerRight,
            child: const Text(
              'الباقات',
              style: TextStyle(fontFamily: 'font', fontSize: 18),
            )),
        Padding(
          padding:
              EdgeInsets.only(right: size.width * 0.1, left: size.width * 0.06),
          child: const Text(
            'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات',
            style: TextStyle(fontFamily: 'font', color: Colors.black54),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: size.height * 0.41,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.easeIn,
              viewportFraction: 0.5,
              scrollDirection: Axis.horizontal
              // enableInfiniteScroll: false
              ),
          items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'الأكثر شيوعا',
                                style: TextStyle(
                                    fontFamily: 'font',
                                    color: Colors.white,
                                    fontSize: 16),
                              )),
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        const Text('الباقة الثانية',
                            style: TextStyle(fontFamily: 'font', fontSize: 16)),
                        Divider(
                          indent: size.width * 0.11,
                          endIndent: size.width * 0.11,
                          color: Colors.red,
                          thickness: 2.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '6500 EGP',
                              style: TextStyle(
                                  color: Colors.black54,
                                  decoration: TextDecoration.lineThrough),
                              textDirection: TextDirection.rtl,
                            ),
                            SizedBox(width: size.width * 0.01),
                            SizedBox(
                                height: size.height * 0.04,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0XFF00B259),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: const Text(
                                    'وفر 67%',
                                    style: TextStyle(
                                        fontFamily: 'font ',
                                        color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        const Text('EGP 4999 '),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          '2 جلسة 30 دقيقة',
                          style: TextStyle(fontFamily: 'font'),
                        ),
                        const Text(
                          '2 جلسة 30 دقيقة',
                          style: TextStyle(fontFamily: 'font'),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SizedBox(
                            height: size.height * 0.04,
                            child: ElevatedButton(
                              onPressed: () {
                                // booksession(context , size);
                                Navigator.of(context).push(PageRouteBuilder(
                                    opaque: false,
                                    pageBuilder:
                                        (BuildContext context, _, __) =>
                                            const Bookiong()));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0XFF0277B2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: const Text(
                                'اطلب الأن',
                                style: TextStyle(
                                    fontFamily: 'font ', color: Colors.white),
                                textDirection: TextDirection.rtl,
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.003),
                    child: const Image(
                        image: AssetImage('Assets/Images/star.png')),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 1,
                      )
                    ],
                  ),
                  height: size.height * 0.40,
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Column(
                      children: [
                        const Text('الباقة الثانية',
                            style: TextStyle(fontFamily: 'font', fontSize: 16)),
                        Divider(
                          indent: size.width * 0.11,
                          endIndent: size.width * 0.11,
                          color: Colors.red,
                          thickness: 2.5,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '6500 EGP',
                              style: TextStyle(
                                  color: Colors.black54,
                                  decoration: TextDecoration.lineThrough),
                              textDirection: TextDirection.rtl,
                            ),
                            SizedBox(width: size.width * 0.01),
                            SizedBox(
                                height: size.height * 0.04,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0XFF00B259),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: const Text(
                                    'وفر 67%',
                                    style: TextStyle(
                                        fontFamily: 'font ',
                                        color: Colors.white),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        const Text('EGP 4999 '),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          '2 جلسة 30 دقيقة',
                          style: TextStyle(fontFamily: 'font'),
                        ),
                        const Text(
                          '2 جلسة 30 دقيقة',
                          style: TextStyle(fontFamily: 'font'),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SizedBox(
                            height: size.height * 0.04,
                            child: ElevatedButton(
                              onPressed: () {
                                // booksession(context , size);
                                Navigator.of(context).push(PageRouteBuilder(
                                    opaque: false,
                                    pageBuilder:
                                        (BuildContext context, _, __) =>
                                            const Bookiong()));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0XFF0277B2),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: const Text(
                                'اطلب الأن',
                                style: TextStyle(
                                    fontFamily: 'font ', color: Colors.white),
                                textDirection: TextDirection.rtl,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget videos(Size size) {
  return Padding(
    padding: EdgeInsets.only(top: size.height * 0.03),
    child: Column(
      children: [
        Container(
            height: size.height * 0.25,
            width: size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('Assets/Images/doctorimage.jpeg'),
                  fit: BoxFit.cover),
            ),
            child: Stack(children: [
              Container(
                height: size.height * 0.25,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Colors.black54, Colors.black38],
                      begin: FractionalOffset(3, 20),
                      end: FractionalOffset(3, 20),
                    )),
              ),
              Positioned(
                  top: size.height * 0.1,
                  left: size.width * 0.4,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.play_circle),
                    iconSize: size.height * 0.05,
                    color: Colors.black54,
                  )),
              Positioned(
                  bottom: size.height * 0.02,
                  right: size.width * 0.05,
                  child: const Text(
                    'عنوان الفيديو',
                    style: TextStyle(
                        fontFamily: 'font', color: Colors.white, fontSize: 17),
                  )),
            ])),
      ],
    ),
  );
}
// Widget videos(VideoPlayerController _controller) {
//   return _controller != null && _controller.value.isInitialized
//       ? Container(
//           height: 100,
//           alignment: Alignment.center,
//           child: VideoPlayer(_controller),
//         )
//       : Container(
//           height: 200,
//           child: const Center(
//             child: CircularProgressIndicator(),
//           ),
//         );
// }

Widget profilepersonally(Size size) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Padding(
      padding:
          EdgeInsets.only(right: size.width * 0.1, left: size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          const Text(
            'حول المعالج',
            style: TextStyle(fontFamily: 'font', fontSize: 18),
          ),
          const Text(
            'حب الذات , مشاكل الانفصال , الخجل الأجتماعي , اضطراباتالقلق , اضطراب الوسواس القهري , اضطراب كرب ما بعدالصدمة , اضطراب قلق الفراق، القلق العام، الرهاب الاجتماعيالفصام , اضطرابات المزاج , الاضطراب الوجداني ثنائي القطب ,اضطراب الهلع ورهاب الخلاء , الفوبيا والرهاب الاجتماعي ,الاضطرابات الجنسية , الخلل الجنسي , الخطل , اضطراب الهويةالجنسية , اضطرابات الأكل , فقدان الشهية , النهام , السمنة .اضطرابات الشخصية , اضطرابات المزاج , الاكتئاب والاضطراباتالذهانية , العلاقات , اضطرابات النفضة , اضطرابات الارتباطالتفاعلي , الأفكار الأنتحارية , التعافي من الاغتصاب',
            style: TextStyle(
                fontFamily: 'font', fontSize: 15, color: Colors.black54),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Text(
            'الشهادات العلمية',
            style: TextStyle(fontFamily: 'font', fontSize: 18),
          ),
          const Text(
            'دكتوراة في علم النفس، جامعة ليون 2 - فرنسا - استاذه محاضرة في الجامعة اللبنانية - بيروت - لبنان - محللة نفسية من المدرسة الفرنسية لعلم النفس - باريس -عضو المدرسة الفرنسية لعلم النفس - باريس - ',
            style: TextStyle(
                fontFamily: 'font', fontSize: 15, color: Colors.black54),
          )
        ],
      ),
    ),
  );
}

class Comment extends StatelessWidget {
  const Comment({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return SizedBox(
          width: size.width * 0.85,
          height: size.height * 0.25,
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.05),
              child: Container(
                height: size.height * 0.2,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 1,
                      color: Colors.black12,
                      offset: Offset(1, 1),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.05, right: 20, left: 20),
                  child: const Text(
                    'جلسات اونلاين اسبوعية،الدكتورة كان لديها تخطيط جيد ساعدني على فتح صناديق عديدة في حياتي الماضية فيما يخص العلاقات الأسرية و العلاقات العاطفية',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontFamily: 'font', color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ),
            Positioned(
                right: size.width * 0.04,
                top: size.height * 0.03,
                child:
                    const Image(image: AssetImage('Assets/Images/user.png'))),
            Positioned(
              top: size.height * 0.06,
              right: size.width * 0.16,
              child: Row(
                children: [
                  Row(
                      children: List.generate(5, (index) {
                    return const Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow,
                      size: 18,
                    );
                  })),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  const Text(
                    'زینب',
                    style: TextStyle(
                        fontFamily: 'font', fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            )
          ]),
        );
      }),
    );
  }
}
