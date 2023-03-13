import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoe_kart/loginpage_test/loginpage.dart';
import 'package:shoe_kart/main.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>LoginScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color:  Color(0xffDCF6E6),
        child: Center(
          child: Column(children: [
            SizedBox(height: 100,),
            Image.asset("images/shoesplashcreen.png",height: 300,width: 300,),
            CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.orange),
            )
          ],),
        )
    );
  }
}