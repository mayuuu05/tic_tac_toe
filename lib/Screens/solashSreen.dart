import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/globals.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4),(){
      Navigator.of(context).pushReplacementNamed('/st');
    });
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage('assets/images/bgg.jpg'))
       ),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: height*0.4,),
              Image.asset('assets/images/tic.png'),
              SizedBox(height: height*0.3,),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Loading...',textStyle: TextStyle(color: Color(0xffFEC808),fontWeight: FontWeight.bold,fontSize: 20)),
                ],
              ),
            ],
          )
      ),
    );
  }
}
