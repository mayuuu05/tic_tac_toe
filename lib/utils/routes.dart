import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/game.dart';
import 'package:tic_tac_toe/Screens/solashSreen.dart';
import 'package:tic_tac_toe/Screens/stratPage.dart';

class AppRoutes{
  static Map <String,Widget Function(BuildContext)> routes= {
    '/': (context) => const SplashScreen(),
    '/st': (context) => const StartPage(),
    '/game': (context) => const GamePage(),
  };
}