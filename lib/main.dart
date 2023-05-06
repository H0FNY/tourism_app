import 'package:flutter/material.dart';
import 'package:tourism/login/Login.dart';
import 'package:tourism/login/Register.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Login.id:(context)=>Login(),
        Regester.id:(context)=>Regester(),
      },
      debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            double screenwidht=MediaQuery.of(context).size.width;
            double screenheight=MediaQuery.of(context).size.width;
            return AnimatedSplashScreen(
              splashIconSize: screenheight,
              centered: false,
              backgroundColor:  Color(0xff364958),
              splash: Image.asset('assets/images/Group 1.png'),
              nextScreen: Login(),
            );
          }
        ),
    );
  }
}