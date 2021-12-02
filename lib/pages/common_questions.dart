import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class Commomquestions extends StatelessWidget {
  const Commomquestions({Key? key}) : super(key: key);

  final String text =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                            height: size.height * 0.15,
                            width: double.infinity,
                            //  color: Colors.red,
                            child: const Image(
                                image: AssetImage("Assets/Images/logo.png"))),
                      ),
                      Positioned(
                        top: size.height * 0.018,
                        right: size.width * 0.04,
                        child: IconButton(
                          onPressed: () {},
                          icon: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  "اسئلة حول دكتورك",
                  style: TextStyle(
                      fontFamily: 'font',
                      fontWeight: FontWeight.w700,
                      fontSize: 26),
                ),
                SizedBox(
                  height: size.height * 0.030,
                ),
                expandable("كيف تتم جلسة الفيديو مع الطبيب", size),
                SizedBox(
                  height: size.height * 0.020,
                ),
                expandable('هل من الضروري فتح الكاميرا اثناء الجلسة ؟', size),
                SizedBox(
                  height: size.height * 0.020,
                ),
                expandable('هل أستطيع الإلغاء او تغيير الموعد بع', size),
                SizedBox(
                  height: size.height * 0.020,
                ),
                expandable(
                    'هل يمكن اجراء الجلسة من خلال الأيفون او الاندرويد، او من جهاز الكمبيوتر ؟',
                    size),
                SizedBox(
                  height: size.height * 0.020,
                ),
                expandable('ما هي وسائل الدفع المتاحة؟', size),
              ],
            ),
          ),
        
      ),
    );
  }

  expandable(String title, Size size) {
    return ExpandableNotifier(
      child: Padding(
        padding: EdgeInsets.only(
            right: size.width * 0.030, left: size.width * 0.030),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ScrollOnExpand(
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30),
                child: ExpandablePanel(
                  header: Container(
                      margin: EdgeInsets.only(top: size.height * 0.015),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: TextStyle(fontFamily: 'font', fontSize: 16),
                          ))),
                  collapsed: const Text(
                    '',
                    textAlign: TextAlign.center,
                  ),
                  expanded: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(text),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
