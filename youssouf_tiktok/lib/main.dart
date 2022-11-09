import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youssouf_tiktok/auth/dateInscription.dart';
import 'package:youssouf_tiktok/auth/inscription.dart';
import 'package:youssouf_tiktok/auth/login_screen.dart';
import 'package:youssouf_tiktok/auth/passwordforget.dart';
import 'package:youssouf_tiktok/auth/signup_screen.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
      // home: LoginScreen(),
      // home: SignupScreen(),
      // home: DateInscription(),
      // home: PassForget(),
      home: HomePage(),
    );
  }
}
