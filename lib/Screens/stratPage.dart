import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/globals.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: height*0.2+10,),
              Image.asset('assets/images/tic.png',height: 130,),
              Container(
                  child: Image.asset('assets/images/Group 3.png',height: 250,)),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/game');

                  },
                  child: Image.asset('assets/images/play.png',height: 100,)),
            ],
          )
      ),
    );
  }
}
