import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tourism/firebase_options.dart';
import 'screens/Home_screen.dart';
import 'screens/Login.dart';
import 'screens/Register.dart';
import 'screens/auth_screen.dart';
import 'screens/details_screen.dart';
import 'screens/forget_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/verification_screen.dart';
import 'screens/navigation_bar.dart';

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
        Regester.id:(context)=>Regester(),
        Login.id:(context)=>Login(),
        Authpage.id:(context)=>Authpage(),
        NavigationPage.id: (context)=>NavigationPage(),
        Home.id:(context)=>Home(),
        Profile.id:(context)=>Profile(),
        ForgetPassword.id:(context)=>ForgetPassword(),
        Verif.id: (context)=>Verif(),
      },
      debugShowCheckedModeBanner: false,
        home: Login(),
    );
  }
}