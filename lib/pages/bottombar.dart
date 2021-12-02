import 'package:doctor_application/constants/color.dart';
import 'package:doctor_application/pages/common_questions.dart';
import 'package:doctor_application/pages/menu.dart';
import 'package:doctor_application/pages/sessions.dart';
import 'package:doctor_application/pages/videos.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
    Bottombar({Key? key, required this.pageindex}) : super(key: key);
     late int pageindex;

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  @override
 
  Widget build(BuildContext context) {
   
    List bottombaritems = [
      widget.pageindex == 0
          ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
               Image(image: AssetImage('Assets/Images/Home2.png')),

              Text('الرئيسية'  , style: TextStyle(color: bottomtextcolorselected),),
            ],
          )
          : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
               Image(image: AssetImage('Assets/Images/Home.png')),
              Text('الرئيسية', style: TextStyle(color: bottomtextcolorunselected),),
            ],
          ),
      widget.pageindex == 1
          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,

            children: const [
               Image(image: AssetImage('Assets/Images/sessions2.png')),
              Text('تعيينات', style: TextStyle(color: bottomtextcolorselected),),
            ],
          )
          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,

            children: const [
               Image(image: AssetImage('Assets/Images/sessions.png')),
              Text('تعيينات', style: TextStyle(color: bottomtextcolorunselected),),
            ],
          ),
      widget.pageindex == 2
          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,

            children: const [
               Image(image: AssetImage('Assets/Images/profile2.png')),
              Text('أنا', style: TextStyle(color: bottomtextcolorselected),),
            ],
          )
          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,

            children: const [
               Image(image: AssetImage('Assets/Images/profile.png')),
              Text('أنا' , style: TextStyle(color: bottomtextcolorunselected),),
            ],
          ),
      widget.pageindex == 3
          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,

            children:const  [
               Image(image: AssetImage('Assets/Images/other2.png')),
              Text('إضافي' , style: TextStyle(color: bottomtextcolorselected),),
            ],
          )
          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,

            children: const [
               Image(image: AssetImage('Assets/Images/other.png')),
              Text('إضافي', style: TextStyle(color: bottomtextcolorunselected),),
            ],
          ),
    ];
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: IndexedStack(
        index: widget.pageindex,
        children: const [
           Commomquestions(),
           Sessions(),
           Videos(),
           Menu(),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.1,
        decoration: const BoxDecoration(),

        child: Padding(
          padding:  EdgeInsets.only(left : size.width*0.05 , right: size.width*0.05) ,
          child: Row(
          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottombaritems.length, (index) 
            {
              return GestureDetector(
                onTap: ()
                {
                  setState(() {
                    widget.pageindex= index;
                  });
                 
                },
                child: Row(children: [
                  bottombaritems[index],
                ],),
              );
            }
            )
          ),
        ),
      ),
    );
  }
}
