//import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({ Key? key }) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<dynamic> videolist = [
    {

    'name'  : 'اختر طبيب',
    'thumnail'  :  'Assets/Images/thumnail.jpeg',
    'video_url' : 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',

    },
     {
    'name'  : 'احجز موعد جلستك',
    'thumnail'  :  'Assets/Images/thumnail.jpeg',
    'video_url' : 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',

    },
     {
    'name'  : 'اختر طريقة الدفع',
    'thumnail'  :  'Assets/Images/thumnail.jpeg',
    'video_url' : 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',

    },

     {
    'name'  : 'استمتع بجلستك',
    'thumnail'  :  'Assets/Images/thumnail.jpeg',
    'video_url' : 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',

    }


  ];
  
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    
    return SafeArea(
child : Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(right : size.width*0.08 , left  : size.width*0.08),
        child: ListView(
          children: [
              
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(

              children : [
                 IconButton(onPressed: (){
                   Navigator.of(context).pop();
                 }, icon:const  Icon(Icons.arrow_back)),
                SizedBox(width: size.width*0.13),
             SizedBox(
                    height: size.height * 0.25,
                    width: size.width * 0.38,
                    child: Image.asset(
                      'Assets/Images/logo.png',
                    ),
                  ),
                
            ]
            ),
          ),

          const Center(child: Text('كيف تحجز جلستك ؟' , style:TextStyle(fontFamily: 'font' , fontSize: 23) , textDirection: TextDirection.rtl, )),

          SizedBox(height: size.height*0.03,),

            Column(
              
              children: 
            videolist.map((e) => Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding:  EdgeInsets.only(top : size.height * 0.02),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                               Text(e['name'], style:const TextStyle(fontFamily: 'font' , fontSize: 18) ,),
                    SizedBox(height: size.height*0.01),
                   Container(height: size.height*0.25,
                   width: size.width,

                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(image: AssetImage(e['thumnail']) , fit: BoxFit.cover)

                   ),
                   child: IconButton(onPressed: (){
                    //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  Videoplaying(

                    //    name : e['name'],
                    //    videourl : e['video_url'],
                    //  )));
                   }, icon:  Icon(Icons.play_arrow , size: size.height*0.06,)),
                   )
                  ],
                ),
              ),
            )).toList()),
          ],
        ),
      ),
),
    );
  }
}

// class Videoplaying extends StatefulWidget {
//   const Videoplaying({ Key? key, required this.name, required this.videourl }) : super(key: key);

//   final String name ;
//   final String videourl;
//   @override
//   _VideoplayingState createState() => _VideoplayingState();
// }

// class _VideoplayingState extends State<Videoplaying> {
//   late BetterPlayerController _betterPlayerController;
//   GlobalKey _betterplayerkey = GlobalKey();
//   @override
//   void initState() {
//     // TODO: implement initState
//     BetterPlayerConfiguration betterPlayerConfiguration =const  BetterPlayerConfiguration(
//       aspectRatio: 16/9,
//       autoPlay: true,
//       fit: BoxFit.cover,
//     );
//     BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(BetterPlayerDataSourceType.network,widget.videourl);
//     _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
//     _betterPlayerController.setupDataSource(betterPlayerDataSource);
//     _betterPlayerController.setBetterPlayerGlobalKey(_betterplayerkey);
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     Size size  = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//             SizedBox(height: size.height*0.2,
//             width: size.width * 0.6,
//             child: BetterPlayer(controller: _betterPlayerController , key: _betterplayerkey,),
//             )
//       ],),
      
//     );
//   }
// }