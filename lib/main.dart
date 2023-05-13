import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tourism/firebase_options.dart';
import 'package:tourism/screens/Home_screen.dart';
import 'package:tourism/screens/Login.dart';
import 'package:tourism/screens/Register.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tourism/screens/auth_screen.dart';
import 'package:tourism/screens/verification_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        Home.id:(context)=>Home(),
        Authpage.id:(context)=>Authpage(),
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
              nextScreen: Verif(),
            );
          }
        ),
    );
  }
}