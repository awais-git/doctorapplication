import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(
          padding: EdgeInsets.only(top : 50),
          child: Text("profile", textAlign: TextAlign.end,),
        )
      
    );
  }
}